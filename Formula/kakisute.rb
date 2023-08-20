class Kakisute < Formula
  desc "Kakisute(scribbled snippets) management tool written in Rust"
  homepage "https://github.com/kazu914/kakisute"
  version "v0.2.0"

  on_macos do
    # if arm or else
    if Hardware::CPU.arm?
      url "https://github.com/kazu914/kakisute/releases/download/#{version}/kakisute-aarch64-apple-darwin.tar.gz"
      sha256 "69d51e54b0f199b00938361309e0bdc17477bcbde75ff2c251baf3b359b57822"
    else
      url "https://github.com/kazu914/kakisute/releases/download/#{version}/kakisute-x86_64-apple-darwin.tar.gz"
      sha256 "e2f2bd77839f8f6da9b38d3ce326981ed4d65264057b0256f464edcc232e31c8"
    end
  end

  def install
    bin.install "kakisute"

    # bash completion
    output = Utils.safe_popen_read("#{bin}/kakisute", 'completion', '--shell', 'bash')
    (bash_completion / 'kakisute').write output
    # zsh completion
    output = Utils.safe_popen_read("#{bin}/kakisute", 'completion', '--shell', 'zsh')
    (zsh_completion / '_kakisute').write output
  end
end

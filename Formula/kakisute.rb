class Kakisute < Formula
  desc "Kakisute(scribbled snippets) management tool written in Rust"
  homepage "https://github.com/kazu914/kakisute"
  version "v0.2.0-feature-refine-actions.0"

  on_macos do
    # if arm or else
    if Hardware::CPU.arm?
      url "https://github.com/kazu914/kakisute/releases/download/v#{version}/kakisute-aarch64-apple-darwin.tar.gz"
      sha256 ""
    else
      url "https://github.com/kazu914/kakisute/releases/download/v#{version}/kakisute-x86_64-apple-darwin.tar.gz"
      sha256 ""
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

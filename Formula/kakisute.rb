class Kakisute < Formula
  desc "Kakisute(scribbled snippets) management tool written in Rust"
  homepage "https://github.com/kazu914/kakisute"
  version "v0.3.0-feature-refine-actions.7"

  on_macos do
    # if arm or else
    if Hardware::CPU.arm?
      url "https://github.com/kazu914/kakisute/releases/download/#{version}/kakisute-aarch64-apple-darwin.tar.gz"
      sha256 "afda4fae8bea608f08509443b7e85b6c512b57a6b6e8eb8efa7c38dcae6ceaca"
    else
      url "https://github.com/kazu914/kakisute/releases/download/#{version}/kakisute-x86_64-apple-darwin.tar.gz"
      sha256 "9802f34d00000c4dbcbe945de00ade352e8cbfdf4b723fd959301719d68f5803"
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

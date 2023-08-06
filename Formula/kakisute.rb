class Kakisute < Formula
  desc "Kakisute(scribbled snippets) management tool written in Rust"
  homepage "https://github.com/kazu914/kakisute"
  url "https://github.com/kazu914/kakisute/releases/download/v0.1.4/kakisute-x86_64-apple-darwin.tar.gz"
  sha256 "742d8d4f22157809d2cf16dc94ff9c03dd4d87981ac0c42fda0da1258828ed22"
  version "0.1.4"

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

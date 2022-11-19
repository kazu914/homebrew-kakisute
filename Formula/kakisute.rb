class Kakisute < Formula
  desc "Kakisute(scribbled snippets) management tool written in Rust"
  homepage "https://github.com/kazu914/kakisute"
  url "https://github.com/kazu914/kakisute/releases/download/v0.1.2/kakisute-x86_64-apple-darwin.tar.gz"
  sha256 "cb2b6a049bf644e11fbd4643509762320520c66f395bc682115d10f2e0189595"
  version "0.1.2"

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

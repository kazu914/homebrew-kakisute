class Kakisute < Formula
  desc "Kakisute(scribbled snippets) management tool written in Rust"
  homepage "https://github.com/kazu914/kakisute"
  url "https://github.com/kazu914/kakisute/releases/download/v0.1.4/kakisute-x86_64-apple-darwin.tar.gz"
  sha256 "4a6227d31012d93f62b2fd9c12c86f1b234ea8fabe90dba3d734048882488bd1"
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

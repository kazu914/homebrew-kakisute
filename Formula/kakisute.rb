class Kakisute < Formula
  desc "Kakisute(scribbled snippets) management tool written in Rust"
  homepage "https://github.com/kazu914/kakisute"
  url "https://github.com/kazu914/kakisute/releases/download/v0.1.2/kakisute-x86_64-apple-darwin.tar.gz"
  sha256 "ffaaa6046a7105c97257a3e58d3ddca2292ea901eeb871391467ea0fe0928bca"
  version "0.1.2"

  def install
    bin.install "kakisute"
  end
end

class Kakisute < Formula
  desc "Kakisute(scribbled snippets) management tool written in Rust"
  homepage "https://github.com/kazu914/kakisute"
  url "https://github.com/kazu914/kakisute/releases/download/v0.1.2/kakisute-x86_64-apple-darwin.tar.gz"
  sha256 "ab5cb92a32e73d3940e5e5add480d11fb324437f559ea917371d0c20fc30a0cb"
  version "0.1.2"

  def install
    bin.install "target/x86_64-apple-darwin/release/kakisute" => "kakisute"
  end
end

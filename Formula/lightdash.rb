class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3448.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3448.0/lightdash-cli-0.3448.0-macos-arm64.tar.gz"
      sha256 "723f3308b8b65d771325b04779e8bb97ed7f18e42b9cad874a115b4918e7b03e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3448.0/lightdash-cli-0.3448.0-macos-x64.tar.gz"
      sha256 "c65ffe9717983b6a15237619d6a2993543472516d9cc55adcf88ebe1ddf609c3"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end

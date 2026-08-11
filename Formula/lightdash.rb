class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.129.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.129.0/lightdash-cli-1.129.0-macos-arm64.tar.gz"
      sha256 "5e656e9c76014a89d601c8677f6375ad87aab0113702c2fbd2b120884f3954c3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.129.0/lightdash-cli-1.129.0-macos-x64.tar.gz"
      sha256 "d864314b109b7c9e577ec535ad24d8d429284b7da62f60dccc8b16ac8677357c"
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

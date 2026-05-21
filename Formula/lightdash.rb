class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3002.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3002.1/lightdash-cli-0.3002.1-macos-arm64.tar.gz"
      sha256 "e6b0daab9ec7da6cff718bda433a20f96eed14f92c702aa0881b61818f7b6331"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3002.1/lightdash-cli-0.3002.1-macos-x64.tar.gz"
      sha256 "9d249433e58a1d6aef9eaa2ffc3bf1254c43385f6edd7c97890899aef2dd7934"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.128.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.128.0/lightdash-cli-1.128.0-macos-arm64.tar.gz"
      sha256 "869f0b5ce18dfc61d4817250d243887ee2e5f0f30d98ffdb73680277dd5c381e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.128.0/lightdash-cli-1.128.0-macos-x64.tar.gz"
      sha256 "1cbadf077731ac3486284fc833b36381497bf8dff84084a61b2dca9b999a69ca"
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

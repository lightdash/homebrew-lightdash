class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3125.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3125.2/lightdash-cli-0.3125.2-macos-arm64.tar.gz"
      sha256 "799f8ec1673533d93cb9cdb3d14dc8459195acbbb600940e02a1ccac76b0e863"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3125.2/lightdash-cli-0.3125.2-macos-x64.tar.gz"
      sha256 "f6b5e67ec4c38b4d412b8a3158077b04224aee327fe7d44456dea0a2e45a3617"
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

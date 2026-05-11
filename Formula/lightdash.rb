class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2911.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2911.0/lightdash-cli-0.2911.0-macos-arm64.tar.gz"
      sha256 "22768dee3a9af92dc48e37d9b781bd51f03fc9a0d26deb7abbd5b00f0a9880c9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2911.0/lightdash-cli-0.2911.0-macos-x64.tar.gz"
      sha256 "87bf24341f0d1087995ef64f97f3b37791c0a98c72ea5d6cabc454379b96d449"
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

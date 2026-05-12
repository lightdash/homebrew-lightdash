class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2920.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2920.0/lightdash-cli-0.2920.0-macos-arm64.tar.gz"
      sha256 "4ca28c5dd987aba8772cb4d0f6f3860ee914910a124c40728c376cd645a9ef5c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2920.0/lightdash-cli-0.2920.0-macos-x64.tar.gz"
      sha256 "63dd0846345c23dc6506a8fb9baef6b68c491dc9af9b6f7fb6c8898ce8b016fb"
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

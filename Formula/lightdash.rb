class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2829.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2829.0/lightdash-cli-0.2829.0-macos-arm64.tar.gz"
      sha256 "5e25581fbf28b3c83fc6fc58151983d6b0f859269cde187ce88d0dc63ab1694d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2829.0/lightdash-cli-0.2829.0-macos-x64.tar.gz"
      sha256 "77386747981d059d565960be3974eb24a4a57bb107bcaa2fa37441dd2a81626e"
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

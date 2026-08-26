class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.16.0/lightdash-cli-2.16.0-macos-arm64.tar.gz"
      sha256 "675221134355557d9e327e2243a96bb51f34203a712f95d1a4caae229695e156"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.16.0/lightdash-cli-2.16.0-macos-x64.tar.gz"
      sha256 "f196094b3f0df3f283e1a663234e0078d6ebf3bf52f5456526f285fb540ef8ed"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2262.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2262.4/lightdash-cli-0.2262.4-macos-arm64.tar.gz"
      sha256 "a099e957e134d98864d64e19b90b9921963af00bfe992e7c6ae3b95449e71a6c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2262.4/lightdash-cli-0.2262.4-macos-x64.tar.gz"
      sha256 "93cd915340c13d39a211f8f37bcd17f755d835fa71ccddc67bd2e2b892293aad"
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

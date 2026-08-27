class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.25.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.25.0/lightdash-cli-2.25.0-macos-arm64.tar.gz"
      sha256 "8002f6aa84242860403f46923d187a10dc736c5bb2f67530066860567628f8a8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.25.0/lightdash-cli-2.25.0-macos-x64.tar.gz"
      sha256 "a60bcc047176c35aad80a3a73eeb1c78aa8d400c5d2524460da2f84208418f11"
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

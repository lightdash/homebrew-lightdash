class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.148.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.148.0/lightdash-cli-2.148.0-macos-arm64.tar.gz"
      sha256 "be70741cebd4f9f7f4bdd08705b2f171ed9cdf6f593a7c8e282d11f10254f43e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.148.0/lightdash-cli-2.148.0-macos-x64.tar.gz"
      sha256 "3bc6b2b25b572e38805f6a387dd5b879106f682d156e8fcbce5a3e3d6921362d"
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

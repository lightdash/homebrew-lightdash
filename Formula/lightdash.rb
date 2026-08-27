class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.22.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.22.0/lightdash-cli-2.22.0-macos-arm64.tar.gz"
      sha256 "0203df1211f378ac59a495ae6f26efa44259ae0a6999d184c4f5144387ca5071"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.22.0/lightdash-cli-2.22.0-macos-x64.tar.gz"
      sha256 "8e49afdcec888ad1b91f6bd0dab2ff6e0cdd8796186189b45076adb26227d9ef"
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

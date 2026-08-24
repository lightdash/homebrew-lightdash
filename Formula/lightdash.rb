class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.252.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.252.1/lightdash-cli-1.252.1-macos-arm64.tar.gz"
      sha256 "70d0fe00fcd9a31e6cd50987250a00984321714ed9b97cadc7524cabad09c14f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.252.1/lightdash-cli-1.252.1-macos-x64.tar.gz"
      sha256 "a808aaaf84d03408f391ac0600b1397372916dee26a34cc6aa1377b99c84cbc2"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3215.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3215.0/lightdash-cli-0.3215.0-macos-arm64.tar.gz"
      sha256 "c191d9bf31a322648f343f3584bf0180594294fd9e34eeb2ff05d301b6a0d88f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3215.0/lightdash-cli-0.3215.0-macos-x64.tar.gz"
      sha256 "4e9268d301e24b91360f086a03495ddb79ea3d6755862aa912cd6ec46c8d4de2"
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

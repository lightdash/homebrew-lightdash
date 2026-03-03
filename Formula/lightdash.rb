class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2554.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2554.0/lightdash-cli-0.2554.0-macos-arm64.tar.gz"
      sha256 "a0fcd56f444b10204699e1160b8c014a772a23291181668388fb636a801dbabc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2554.0/lightdash-cli-0.2554.0-macos-x64.tar.gz"
      sha256 "8117aa2f408acdb253c13afc21352177eb37d2dc2c5e0df634b21950b4b2194f"
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

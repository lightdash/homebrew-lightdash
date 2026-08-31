class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.67.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.67.0/lightdash-cli-2.67.0-macos-arm64.tar.gz"
      sha256 "196db322118e8a280672db3adb18c05098079d5ad2243811d7eb7f05add5e3d4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.67.0/lightdash-cli-2.67.0-macos-x64.tar.gz"
      sha256 "7df0cb3a96e5493fb8257af61496c43d722b60483b66e7b1c9817766a6e7a295"
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

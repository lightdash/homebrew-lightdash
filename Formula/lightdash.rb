class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.182.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.182.0/lightdash-cli-1.182.0-macos-arm64.tar.gz"
      sha256 "5de6bf4c84ae835f595a2755911779621ff0031cf5737006d87d0c2048909e68"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.182.0/lightdash-cli-1.182.0-macos-x64.tar.gz"
      sha256 "b4e03a9c218bc74eb21814d41e0a36eb7456b1b3d214f5cfb466564a598ca1c7"
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

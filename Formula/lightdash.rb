class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.158.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.158.2/lightdash-cli-1.158.2-macos-arm64.tar.gz"
      sha256 "fb6e8ef0c989f59874ddd4ee333c8786bc118dd645b137e5f4b5491885e54c73"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.158.2/lightdash-cli-1.158.2-macos-x64.tar.gz"
      sha256 "5c2a3f2bc835f30c0c93f996e3d412ef7f8fe2d508ab0247522a101986f9ff3d"
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

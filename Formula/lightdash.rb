class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3322.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3322.0/lightdash-cli-0.3322.0-macos-arm64.tar.gz"
      sha256 "ea3a401d59c1e73826695346582c87fede5c62f08fb51930dec3d3674e522e2b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3322.0/lightdash-cli-0.3322.0-macos-x64.tar.gz"
      sha256 "eb7d5efcf45c95cf170b5caee7cb378c7c99e11e9887ab32760c45b520e05295"
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

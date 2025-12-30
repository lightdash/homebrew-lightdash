class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2285.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2285.0/lightdash-cli-0.2285.0-macos-arm64.tar.gz"
      sha256 "bf5ae0a39ac51df5f3130fb49b5c09bc1ed6f61049422fcc60aa33609d9a16d7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2285.0/lightdash-cli-0.2285.0-macos-x64.tar.gz"
      sha256 "769684e3b56d7129f9b19c2c1c86e3c381f14a40e7d8ccbdbd14c40ce926baa6"
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

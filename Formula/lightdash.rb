class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3312.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3312.0/lightdash-cli-0.3312.0-macos-arm64.tar.gz"
      sha256 "3d822c9306680e090592727582085a87620b17ba2f2e862c888d6c8e40d90fc4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3312.0/lightdash-cli-0.3312.0-macos-x64.tar.gz"
      sha256 "bdd69d539dd3e84e718030dcdc4f6f8ccefd9d68679d48bd148fb7cdc9f028ac"
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

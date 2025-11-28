class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2212.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2212.1/lightdash-cli-0.2212.1-macos-arm64.tar.gz"
      sha256 "cee7240667a82c4d7ed686b4b1c796aa5167bd7b75ede375f6dc138ea4652e41"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2212.1/lightdash-cli-0.2212.1-macos-x64.tar.gz"
      sha256 "3a8755d7e926d2313f0e3b63c596e417dcb3f0812c3f16a75252134c913143c4"
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

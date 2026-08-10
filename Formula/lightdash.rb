class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.109.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.109.1/lightdash-cli-1.109.1-macos-arm64.tar.gz"
      sha256 "30a82eae3d2174ed656c0b7921af7f87e9ac7085317c6a8f39eb4c384516578e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.109.1/lightdash-cli-1.109.1-macos-x64.tar.gz"
      sha256 "ffef7835606f1738487580074d66c196806a27a4df39de81af1c669e232d6e2f"
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

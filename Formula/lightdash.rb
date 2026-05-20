class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2990.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2990.0/lightdash-cli-0.2990.0-macos-arm64.tar.gz"
      sha256 "baae3f3d00b5b1ac97311d65f73b11bd887518c110a875834eea69e06adeba03"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2990.0/lightdash-cli-0.2990.0-macos-x64.tar.gz"
      sha256 "ad7d97c6d7c887936d4bbe9b4a609310ca976afe1cff4f8c50b789bb8b34e362"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2709.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2709.1/lightdash-cli-0.2709.1-macos-arm64.tar.gz"
      sha256 "250e0fc3bfe95c5a19e89efc705e0b12e7fd860b271925fa0548e418e73b4d7b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2709.1/lightdash-cli-0.2709.1-macos-x64.tar.gz"
      sha256 "3a11e657b92eb6201a6ca1269f710171c97731b84364147061df719d050fc284"
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

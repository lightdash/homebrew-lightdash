class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2716.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2716.0/lightdash-cli-0.2716.0-macos-arm64.tar.gz"
      sha256 "2c0d9c358a4d9be1cba88af527e82eae5b0ab94c919b991288f851a00a08b575"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2716.0/lightdash-cli-0.2716.0-macos-x64.tar.gz"
      sha256 "596b1be5d82e39034a9c52bd3b212599cd60932f33c376aa9c6be164cf3364c1"
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

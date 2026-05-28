class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3036.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3036.0/lightdash-cli-0.3036.0-macos-arm64.tar.gz"
      sha256 "814afa05e9782760e29112a386e3ce38fa0bc394e8a185c991f2913ae77c6aa2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3036.0/lightdash-cli-0.3036.0-macos-x64.tar.gz"
      sha256 "c9647f2f33580cfb8485b992a4829dd328ca50c888f0e4f4c7e34ff5049aab25"
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

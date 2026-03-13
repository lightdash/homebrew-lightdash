class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2615.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2615.5/lightdash-cli-0.2615.5-macos-arm64.tar.gz"
      sha256 "f09c744afd1b070bad83403e3f8801eada3903802e88f2fd1dc3e5f46ab27a0a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2615.5/lightdash-cli-0.2615.5-macos-x64.tar.gz"
      sha256 "cbafaaa8bb474d6c5d4fbfbd22f199970edf87233102c3eb0447c1c24bc10fa2"
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

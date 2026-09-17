class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.247.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.247.1/lightdash-cli-2.247.1-macos-arm64.tar.gz"
      sha256 "f9c52f421f2733dd6e035b5c978fbda2de31364cd737412d4c865562ec76b763"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.247.1/lightdash-cli-2.247.1-macos-x64.tar.gz"
      sha256 "983898c22f105864f1268d9024a51228c471e2c749bbe3d2e600a68ebd0b6553"
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

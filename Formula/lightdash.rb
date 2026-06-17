class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3179.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3179.1/lightdash-cli-0.3179.1-macos-arm64.tar.gz"
      sha256 "af18c6bcdaeed85267695b701debcdba9ac86a4ad165574e6da9216fb4de0373"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3179.1/lightdash-cli-0.3179.1-macos-x64.tar.gz"
      sha256 "ec2be93285664da928fa91382f56ad66d1b799a80714e12d0f407b1fbb4fa4f9"
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

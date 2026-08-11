class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.116.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.116.1/lightdash-cli-1.116.1-macos-arm64.tar.gz"
      sha256 "46b139255217ba8d4b6aced31691285a2c515e76fe05883a5c322bcd4568a0e2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.116.1/lightdash-cli-1.116.1-macos-x64.tar.gz"
      sha256 "98588a6f2746a7df73ad850bee3a997dfacb4cdcd4d83cf0ae6bee6e2fc67d21"
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

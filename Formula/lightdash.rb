class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.167.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.167.1/lightdash-cli-2.167.1-macos-arm64.tar.gz"
      sha256 "16a31b2a32cdacfecef424ad8ff2217d3b71a84ffbd994c9d45bfb89d295db58"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.167.1/lightdash-cli-2.167.1-macos-x64.tar.gz"
      sha256 "384674c2d584df0d45f5c59c0ebdb0b20246810612d367f08d964ba84d3dcbb1"
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

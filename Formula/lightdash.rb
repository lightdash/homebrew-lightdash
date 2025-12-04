class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2224.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2224.0/lightdash-cli-0.2224.0-macos-arm64.tar.gz"
      sha256 "666e25f9bfc7bb8d2adb83cb6d3608b0af05b5ebbc4abd6cd2c400499223e6b7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2224.0/lightdash-cli-0.2224.0-macos-x64.tar.gz"
      sha256 "d3bc739a5390eebe668bb200ce76b43a704f779778dbdedde5d963b1cd18c335"
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

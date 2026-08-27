class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.27.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.27.0/lightdash-cli-2.27.0-macos-arm64.tar.gz"
      sha256 "1b63ff83d501b2e9a475362b7b96acd4d23acaec5d04e31b0cb72b2049f2c27b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.27.0/lightdash-cli-2.27.0-macos-x64.tar.gz"
      sha256 "0cbe0fa822643a08393aba10551bdc8514a34b46cb1c6d5a68b817054229826d"
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

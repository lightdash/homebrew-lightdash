class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2934.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2934.1/lightdash-cli-0.2934.1-macos-arm64.tar.gz"
      sha256 "273abb786254a51de832d4f4b419551a7b4a7aac899a6778587aed2304461e5b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2934.1/lightdash-cli-0.2934.1-macos-x64.tar.gz"
      sha256 "4d5a013e549f9b61c9a834a8c1b6a05e3edb98c3ea7609ee7328b2c0c0b21d45"
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

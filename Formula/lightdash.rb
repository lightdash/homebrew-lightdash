class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2262.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2262.0/lightdash-cli-0.2262.0-macos-arm64.tar.gz"
      sha256 "27fe224f28db9d249921312c738d9dc71d24ded64c903c9bc95115bba98651d3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2262.0/lightdash-cli-0.2262.0-macos-x64.tar.gz"
      sha256 "2dbcb3d5a59841f100a76f4805c7019edc145cbec85080b6203b34241036c111"
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

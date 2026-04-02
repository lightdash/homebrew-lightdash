class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2720.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2720.1/lightdash-cli-0.2720.1-macos-arm64.tar.gz"
      sha256 "c5378c4784f9c88f880c91a5b8efdd791c9c1c32b74a5f6caba3efe2bcdc5d3c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2720.1/lightdash-cli-0.2720.1-macos-x64.tar.gz"
      sha256 "b3df7919ec01e9a2f2908e6f7ec2c7d50aca64883a0b649feb2de2105d871a6e"
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

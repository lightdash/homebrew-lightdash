class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.42.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.42.0/lightdash-cli-2.42.0-macos-arm64.tar.gz"
      sha256 "171e684f222ed795fa48d0c3ecf66be1b79efe41430ca3f83564c52a2ed0d3d3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.42.0/lightdash-cli-2.42.0-macos-x64.tar.gz"
      sha256 "025276953df81f01b4653efb4bac59c351ebe7557bf735099a2450e6127f97c5"
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

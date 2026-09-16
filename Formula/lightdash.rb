class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.228.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.228.1/lightdash-cli-2.228.1-macos-arm64.tar.gz"
      sha256 "39f67bfb68bbb760aa0cf34317e65cd708dc1475f89de1c2214088c09477744e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.228.1/lightdash-cli-2.228.1-macos-x64.tar.gz"
      sha256 "783f2893b4f8d18575a59192238e6ff09a8d90930594ee0cd63cd6b606a59c32"
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

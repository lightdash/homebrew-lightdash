class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2387.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2387.1/lightdash-cli-0.2387.1-macos-arm64.tar.gz"
      sha256 "c06b0c966ec04a5d07b2d001ba180e4f38afaa2ee04a71149824577d403c2852"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2387.1/lightdash-cli-0.2387.1-macos-x64.tar.gz"
      sha256 "0e4c35542a47611ae089e7da5517d75f8a04be833eb708ba6ac498479bd64f97"
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

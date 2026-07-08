class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3328.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3328.5/lightdash-cli-0.3328.5-macos-arm64.tar.gz"
      sha256 "a26ad2cbf86ea234596d65e9efa42319d92540cba30c2264616903ce2ba0d57d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3328.5/lightdash-cli-0.3328.5-macos-x64.tar.gz"
      sha256 "0143aac3fa1d4494fb273db0eb59b205393f7b13abbff03b766cbd3571f981b4"
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

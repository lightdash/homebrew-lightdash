class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.72.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.72.5/lightdash-cli-2.72.5-macos-arm64.tar.gz"
      sha256 "4d76e2c147f3087ee74ee85977a7512a3d3d71922d28c915d8ea3df3d55c544a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.72.5/lightdash-cli-2.72.5-macos-x64.tar.gz"
      sha256 "d4ea712428a044d08e228558162583601277edb2a974d1a2125881d53f5dc448"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.117.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.117.1/lightdash-cli-2.117.1-macos-arm64.tar.gz"
      sha256 "3716895bc8b2c92071bebe1ef8bb876d4fc5b683f41879257d9bd02811f48a25"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.117.1/lightdash-cli-2.117.1-macos-x64.tar.gz"
      sha256 "891cc9dbdb3f1baccd83b7ad5e8ed08752e889098026b972ff5c2f650fc7becb"
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

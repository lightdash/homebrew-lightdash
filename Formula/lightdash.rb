class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2234.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2234.3/lightdash-cli-0.2234.3-macos-arm64.tar.gz"
      sha256 "5d300a529dc9bba6d23e93185ee48e3498afb26158fa1152283bc2d15127741d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2234.3/lightdash-cli-0.2234.3-macos-x64.tar.gz"
      sha256 "b43f98d31af1257bd15af7a238f8cacc2317f41dfa6f1694e289941215735940"
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

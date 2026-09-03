class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.110.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.110.0/lightdash-cli-2.110.0-macos-arm64.tar.gz"
      sha256 "69a51fe7735401ecefe005c75fc87eb8e9be936c4c061117a7d337514807bdd9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.110.0/lightdash-cli-2.110.0-macos-x64.tar.gz"
      sha256 "5b3a2efed001a0db13e69871810765381d1efda6ed08a992cc46470fca6ece90"
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

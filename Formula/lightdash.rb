class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.121.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.121.1/lightdash-cli-2.121.1-macos-arm64.tar.gz"
      sha256 "cf68775e78d2a4b18754db4a416e496f40166e049211303e0f794786d7f5924e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.121.1/lightdash-cli-2.121.1-macos-x64.tar.gz"
      sha256 "e3289273c07f3a1c3780082c4efc260bb0b4ae1677d1a931cb7e8397ddbd2530"
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

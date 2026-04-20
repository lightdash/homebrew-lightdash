class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2764.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2764.4/lightdash-cli-0.2764.4-macos-arm64.tar.gz"
      sha256 "561ed9852a1f052edba022c0a9286b31c32f57996b7e5c70266173b7545bdf87"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2764.4/lightdash-cli-0.2764.4-macos-x64.tar.gz"
      sha256 "cb1ead355eb442d12d209ead6fbb67b8d407afe0471ef215f37170b29388cdb1"
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

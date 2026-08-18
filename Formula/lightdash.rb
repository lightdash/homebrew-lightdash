class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.183.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.183.0/lightdash-cli-1.183.0-macos-arm64.tar.gz"
      sha256 "59689870ccf2c932ea88638b22244308e63c8dc98934a03641efc292234dfbea"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.183.0/lightdash-cli-1.183.0-macos-x64.tar.gz"
      sha256 "b78a7ad736d6e79dc9d547a512483dab397b2b33da13e087e7fa9aa016451f8e"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2393.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2393.0/lightdash-cli-0.2393.0-macos-arm64.tar.gz"
      sha256 "0a327e5f9827713ffa189b4f2667e84ce58637ffd5568196a61cdc41f16018a2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2393.0/lightdash-cli-0.2393.0-macos-x64.tar.gz"
      sha256 "331484122918a8e0d0d6591afbb045dbdc70c9c521e86a1977787d5fa55e22cf"
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

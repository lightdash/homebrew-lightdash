class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.84.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.84.0/lightdash-cli-1.84.0-macos-arm64.tar.gz"
      sha256 "05559f0eddfa0e06e35db3bd5e0659631365bf37464276a7574436ddded04845"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.84.0/lightdash-cli-1.84.0-macos-x64.tar.gz"
      sha256 "24042556969b16830708014c05493b9e3d7cc5b82fa36d51a990fcfef10200d4"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3265.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3265.0/lightdash-cli-0.3265.0-macos-arm64.tar.gz"
      sha256 "8eca454db55604bbdaa7af453345ed0cc0ed05b6028294840cc915f48471fce3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3265.0/lightdash-cli-0.3265.0-macos-x64.tar.gz"
      sha256 "daf7cf4779d53d140b7394d175cc6f78f186723b391353fdea50f307ef7d9012"
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

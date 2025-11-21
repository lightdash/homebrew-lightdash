class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2198.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2198.1/lightdash-cli-0.2198.1-macos-arm64.tar.gz"
      sha256 "47945aeaeffb5929989cab7e13748b7d5c9c0f88a9ddcd7e9997af3b86c6bc50"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2198.1/lightdash-cli-0.2198.1-macos-x64.tar.gz"
      sha256 "62a3b55bf4815397973009cf65d06fc8be667294298602c117bcd0a7df2fca46"
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

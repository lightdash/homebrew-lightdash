class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2331.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2331.4/lightdash-cli-0.2331.4-macos-arm64.tar.gz"
      sha256 "da1ee860f8dcb8127a94abcaacf25ef77ca8028e9989110bd372f5cfef303f35"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2331.4/lightdash-cli-0.2331.4-macos-x64.tar.gz"
      sha256 "c07cdab436c641891cd87ee75c05de29f39d1f540be8bb9e94f66fa9cd99bfec"
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

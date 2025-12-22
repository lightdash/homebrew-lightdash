class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2270.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2270.4/lightdash-cli-0.2270.4-macos-arm64.tar.gz"
      sha256 "290a598a9aae0f2a9e8954bc3ae7a725122048bcacb0473dba094f0111304c82"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2270.4/lightdash-cli-0.2270.4-macos-x64.tar.gz"
      sha256 "5216388c3668c0571a383edd64e842f2172508c2958c732169b48d8f54668052"
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

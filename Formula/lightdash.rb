class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3139.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3139.0/lightdash-cli-0.3139.0-macos-arm64.tar.gz"
      sha256 "c0eb6b58b94b0d467c2e0ca4e2e9807b4907b7f34195ea0ad2a54847aea6aa71"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3139.0/lightdash-cli-0.3139.0-macos-x64.tar.gz"
      sha256 "6e696ee53a61b2079c13a14d59b190a8e510a764f65d13088060ea26003d54a7"
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

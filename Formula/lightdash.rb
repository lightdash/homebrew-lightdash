class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3121.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3121.0/lightdash-cli-0.3121.0-macos-arm64.tar.gz"
      sha256 "63c0308985f6ba2cbc4ca6ed62555b30a69baca1ada0235a82c3ab2d2bc88147"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3121.0/lightdash-cli-0.3121.0-macos-x64.tar.gz"
      sha256 "d470b0f916906ee0f311fadb246a26a84fade1379ef4e327ff5446145345c749"
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

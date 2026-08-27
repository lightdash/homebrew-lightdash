class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.35.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.35.1/lightdash-cli-2.35.1-macos-arm64.tar.gz"
      sha256 "e79005fc4715c6c28f76200ac001bf93b7c5fdfdbd0ccc72d9b069206d022093"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.35.1/lightdash-cli-2.35.1-macos-x64.tar.gz"
      sha256 "cfaf3903e95c00039d2fce217fb895e0d82f9549c46e62630e19354b1ea102ea"
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

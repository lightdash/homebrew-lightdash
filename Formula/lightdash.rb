class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.221.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.221.0/lightdash-cli-2.221.0-macos-arm64.tar.gz"
      sha256 "f05753fefbad028be6e02d4bfc1664493ec4b9cfe0c683dc27a7965a1c52bca8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.221.0/lightdash-cli-2.221.0-macos-x64.tar.gz"
      sha256 "8eabcf96ea65fae6b985ca80eb0261ccfe169a5bbd9542ce86a610caec7f6f65"
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

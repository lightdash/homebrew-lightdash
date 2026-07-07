class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3320.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3320.1/lightdash-cli-0.3320.1-macos-arm64.tar.gz"
      sha256 "68bcbb645bcc8c3ac26a9d1938908ddaed258cdbf9c238aaec3d5033de20cd47"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3320.1/lightdash-cli-0.3320.1-macos-x64.tar.gz"
      sha256 "a47714b9fb7cefbd69208557d563d27ef3f88b30407e32d7ca2c710335ba4fdc"
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

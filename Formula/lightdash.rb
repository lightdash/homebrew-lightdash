class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.217.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.217.0/lightdash-cli-2.217.0-macos-arm64.tar.gz"
      sha256 "6bc5b1d9a2c850cde2b497938e6e8e3190592d5923720dddd98a5ab15db96181"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.217.0/lightdash-cli-2.217.0-macos-x64.tar.gz"
      sha256 "3b8362b39f952e5dbf8d3b8ed856e707c02eece5be138bfa32b28be0d0ef7f3c"
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

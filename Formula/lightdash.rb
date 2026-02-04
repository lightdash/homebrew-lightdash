class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2422.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2422.0/lightdash-cli-0.2422.0-macos-arm64.tar.gz"
      sha256 "05f89c9097e221d9f4059bc58b82047ee820a84cec1df792ae80a4677752c9b2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2422.0/lightdash-cli-0.2422.0-macos-x64.tar.gz"
      sha256 "721699fbaeff6d6103274e47fd30351a3be86f148cb147b2c7d2934fbcc7b6ec"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3357.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3357.0/lightdash-cli-0.3357.0-macos-arm64.tar.gz"
      sha256 "e86165e18e6ceffb4f7841bba874b9cdbdd7c118a9fba0badc5d43e36ecd4f60"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3357.0/lightdash-cli-0.3357.0-macos-x64.tar.gz"
      sha256 "8b7c2dbe89044bbd1be4e2cdd022f21f8cdd25de0a6479f12265841a7c5eb38c"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3158.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3158.0/lightdash-cli-0.3158.0-macos-arm64.tar.gz"
      sha256 "a56b6ab640928fda7f43c8546dc9a6249aa8ef01b2dc4569bf7c3518ab01fdab"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3158.0/lightdash-cli-0.3158.0-macos-x64.tar.gz"
      sha256 "bcd2481b53bd773c9125714d6c550f42c1b19f18ebc7681efc37ddf0870f3752"
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

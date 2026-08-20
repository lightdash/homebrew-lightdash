class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.227.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.227.0/lightdash-cli-1.227.0-macos-arm64.tar.gz"
      sha256 "d15f92ca6b5a5f501c44650ad77193b010c1fcdfa238217f967fa531f9501f8d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.227.0/lightdash-cli-1.227.0-macos-x64.tar.gz"
      sha256 "b7936eacae35656503ccd2a2945e2e5b142354e1505fe38851b378d5c039e00e"
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

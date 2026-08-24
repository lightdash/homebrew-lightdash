class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.242.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.242.0/lightdash-cli-1.242.0-macos-arm64.tar.gz"
      sha256 "a75475b6dc5af68503737b5e9acb4599a5a55448e537fe5454ac4188c13c1ea6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.242.0/lightdash-cli-1.242.0-macos-x64.tar.gz"
      sha256 "679351f4ae5f7369a905e522edf232442d8d0ec5155cf02655d1ed9bc50bfe95"
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

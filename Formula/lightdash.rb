class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3307.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3307.0/lightdash-cli-0.3307.0-macos-arm64.tar.gz"
      sha256 "0e2fc1af5732c7de26eb383457c0b56ecae74c5d104b6234d958f79e1cb02b26"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3307.0/lightdash-cli-0.3307.0-macos-x64.tar.gz"
      sha256 "fc8748963d8de1e0aaa4749a142d264239738be468eed9ab1c4f7ed862776ccd"
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

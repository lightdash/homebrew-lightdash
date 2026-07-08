class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3328.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3328.2/lightdash-cli-0.3328.2-macos-arm64.tar.gz"
      sha256 "eb26d40caa55e82e32233db873f98855bcb94d7318c99588a2c5e8e288ec6e7e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3328.2/lightdash-cli-0.3328.2-macos-x64.tar.gz"
      sha256 "8ff571dd2234e101c99d96771bf2500f940ef6b7fce26982b241ec9080b16c56"
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

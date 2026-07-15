class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3391.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3391.0/lightdash-cli-0.3391.0-macos-arm64.tar.gz"
      sha256 "8d6823819b64f78486c148880002508f593f4911036f535366193fe6bf0ff59d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3391.0/lightdash-cli-0.3391.0-macos-x64.tar.gz"
      sha256 "7b8996c1f7ed53d95fd463f37f9b319aa62e2c3da09fcd9909b17ae37d8b55d3"
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

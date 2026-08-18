class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.192.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.192.0/lightdash-cli-1.192.0-macos-arm64.tar.gz"
      sha256 "cdc1f8cbcb4a55549eaa645684079359a225a6104aabb59d71573c99732185a4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.192.0/lightdash-cli-1.192.0-macos-x64.tar.gz"
      sha256 "c9731e6c52159678ef7991745f8e1af8a7391a2dd40b0816e95c18626c427d33"
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

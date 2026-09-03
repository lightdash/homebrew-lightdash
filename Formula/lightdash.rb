class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.109.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.109.0/lightdash-cli-2.109.0-macos-arm64.tar.gz"
      sha256 "6e1c7d2651d2fa8531a022d4294316649047b0947bbfbb573cc52601a17f191b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.109.0/lightdash-cli-2.109.0-macos-x64.tar.gz"
      sha256 "d46aa4f2aa0eba5fac59da99546fd29784c3bf87e381fc34676a2c592b7b91cc"
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

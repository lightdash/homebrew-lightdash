class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2305.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2305.0/lightdash-cli-0.2305.0-macos-arm64.tar.gz"
      sha256 "e90cd6343c0e523006bc11db12744833d37f01fa40241157952d82cd6a5f0004"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2305.0/lightdash-cli-0.2305.0-macos-x64.tar.gz"
      sha256 "895dae102c73d2fa7abbf1da87c2d1b66334488349c989e9a18bf39a3a512fa8"
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

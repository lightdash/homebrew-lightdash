class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2258.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2258.1/lightdash-cli-0.2258.1-macos-arm64.tar.gz"
      sha256 "3a6cf8bc40b16430ef7a683026176135a83c0f0ba078d1f8437886f2b595e911"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2258.1/lightdash-cli-0.2258.1-macos-x64.tar.gz"
      sha256 "d202690e17bfa5009092c0603552e6bd230a3a8c7021d90004b54e3b6a22206a"
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

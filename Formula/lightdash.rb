class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.169.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.169.0/lightdash-cli-2.169.0-macos-arm64.tar.gz"
      sha256 "6a39d6d2472ba348a3d8cc59b7e854d7eb90dfd3bcaeb78a8e4e7f0f84aaef95"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.169.0/lightdash-cli-2.169.0-macos-x64.tar.gz"
      sha256 "4a2c8db38c313027e464a0c539b238465afdec15dec4aab52b182cf5fac07cbe"
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

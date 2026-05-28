class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3043.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3043.0/lightdash-cli-0.3043.0-macos-arm64.tar.gz"
      sha256 "8f5bf664e2f3b4ec4962a8abc2323ae1dd2d264d899f02826bc5a72202ebe8c7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3043.0/lightdash-cli-0.3043.0-macos-x64.tar.gz"
      sha256 "b6f79f6945eaee40968936aeec541f77311a2cdbf2854f3d1152fe6467ee5c04"
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

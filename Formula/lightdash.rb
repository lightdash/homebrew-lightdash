class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.226.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.226.1/lightdash-cli-2.226.1-macos-arm64.tar.gz"
      sha256 "ec172f6d5e9b9b9abd1825604ea3f16dae811376370327f9c940bc40946bccaf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.226.1/lightdash-cli-2.226.1-macos-x64.tar.gz"
      sha256 "b41a9ba4c6f910d78ed4f6597191c7ffc79cc5402b88ae726c081a4913113d9a"
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

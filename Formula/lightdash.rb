class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.249.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.249.0/lightdash-cli-1.249.0-macos-arm64.tar.gz"
      sha256 "a9198e7cc561ba72d3b0c2a2afced91c603a764afd1858c17e7e48229641f143"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.249.0/lightdash-cli-1.249.0-macos-x64.tar.gz"
      sha256 "a10d03e7a6b8a9c3d372fc104420e3b8000ccb2fc68e8ef38f6a54aeac7a94ca"
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

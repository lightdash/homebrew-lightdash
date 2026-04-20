class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2764.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2764.2/lightdash-cli-0.2764.2-macos-arm64.tar.gz"
      sha256 "98bb29fcf969af5752b8c183df05a0bb9230110a398d9169ff83e22ade5a41e4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2764.2/lightdash-cli-0.2764.2-macos-x64.tar.gz"
      sha256 "20e980fe4a9d63668a98c9b5744af9a43fcaf1370d0fe78a895717959731d2fa"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2648.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2648.2/lightdash-cli-0.2648.2-macos-arm64.tar.gz"
      sha256 "5d473014e29b27b82953e0d602873676b4d5d91105c6099935403ea8f1294a40"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2648.2/lightdash-cli-0.2648.2-macos-x64.tar.gz"
      sha256 "48ea58356ac915856eca14b9c5a1b6ec5619f501eb84a3195e53fdf6aaf8201d"
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

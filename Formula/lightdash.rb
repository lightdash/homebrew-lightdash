class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.38.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.38.0/lightdash-cli-2.38.0-macos-arm64.tar.gz"
      sha256 "4d801e67f94ffe23ddc6751f38e86e7637b021c19692be3d1d0b2fd9e2d44406"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.38.0/lightdash-cli-2.38.0-macos-x64.tar.gz"
      sha256 "d32c3bf1ced9a542feef04810d92ba23d29954099874d389cee97901b0b8737e"
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

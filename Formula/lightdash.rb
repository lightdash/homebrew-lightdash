class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.206.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.206.1/lightdash-cli-1.206.1-macos-arm64.tar.gz"
      sha256 "8f4665676e63b366b64fa4f363263138e662b0757d9c548ba0304ed8d656fec4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.206.1/lightdash-cli-1.206.1-macos-x64.tar.gz"
      sha256 "0b82b59242c6e732e924524bf3a4d352c31938cb9ba446fb378c88f14be02cb5"
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

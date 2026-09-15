class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.224.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.224.1/lightdash-cli-2.224.1-macos-arm64.tar.gz"
      sha256 "d1878c99a65b8b0d49a1274e87a89b32e472100b5081385059d329a1d73ce32c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.224.1/lightdash-cli-2.224.1-macos-x64.tar.gz"
      sha256 "ed609e12f1d6387a70fb54b89df5d7db86085ba73a92011bec75cd74df3165de"
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

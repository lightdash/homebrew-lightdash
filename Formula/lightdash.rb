class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.85.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.85.1/lightdash-cli-2.85.1-macos-arm64.tar.gz"
      sha256 "83f388c75abade5499a40530878c4775df6f3c739821ed2180e3ecc9bfdcdd3c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.85.1/lightdash-cli-2.85.1-macos-x64.tar.gz"
      sha256 "d418e9921bde7202d3c3dd1a376c75be429de99a6722d07a8f588f2c94e91a26"
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

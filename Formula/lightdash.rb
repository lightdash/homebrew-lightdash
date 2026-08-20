class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.225.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.225.0/lightdash-cli-1.225.0-macos-arm64.tar.gz"
      sha256 "e15d1da79d31471890b4fc0d9cc8f4a55eec10f763a62d10f2e2f054bbc4b443"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.225.0/lightdash-cli-1.225.0-macos-x64.tar.gz"
      sha256 "b68847c66f2b2f56eb389ed5d4eef1d4093bb4be4fcaff2429ef57f561d8054b"
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

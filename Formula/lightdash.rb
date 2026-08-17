class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.170.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.170.0/lightdash-cli-1.170.0-macos-arm64.tar.gz"
      sha256 "b1b7d09775cdc978ba26e6d81f3e6bd33311892564c9b11a76266a0fc7190a49"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.170.0/lightdash-cli-1.170.0-macos-x64.tar.gz"
      sha256 "193f337ad4484579967787b70ea02f39c9fa51e5cbfc5933466cdea60398456b"
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

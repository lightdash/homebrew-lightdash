class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3297.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3297.0/lightdash-cli-0.3297.0-macos-arm64.tar.gz"
      sha256 "093a717419af907f6acf9ee2c1e4cba1f7b38c335923202ff48e20de34266c57"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3297.0/lightdash-cli-0.3297.0-macos-x64.tar.gz"
      sha256 "5a8cbe16ec12cea98b7e2e53ad2e0d6fae5c0b55195d2aac609082ccdfd886e7"
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

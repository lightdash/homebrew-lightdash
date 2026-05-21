class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3005.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3005.0/lightdash-cli-0.3005.0-macos-arm64.tar.gz"
      sha256 "6ba72bf73a0ac9773c9c143a0f1730995af1f2c7aac2ae89583b4ef59c1387dc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3005.0/lightdash-cli-0.3005.0-macos-x64.tar.gz"
      sha256 "cc0e83e3c6aed7521a0948f2ad24653d63be4c8719686a97ed416260a745bce2"
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

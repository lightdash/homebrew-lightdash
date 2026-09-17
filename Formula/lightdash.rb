class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.259.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.259.0/lightdash-cli-2.259.0-macos-arm64.tar.gz"
      sha256 "ef94024d0875dcfb989c12baa13f51136d4abf61440722e9a645174b340e8042"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.259.0/lightdash-cli-2.259.0-macos-x64.tar.gz"
      sha256 "4b5e3e811d48dc7e10266256300bf99fa9dd352965c63fbe13107856b543b1d2"
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

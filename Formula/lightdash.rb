class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3429.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3429.1/lightdash-cli-0.3429.1-macos-arm64.tar.gz"
      sha256 "24edca73e36e15100e10607c64b11981dc4bea8657475093bebe0774ba3326ad"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3429.1/lightdash-cli-0.3429.1-macos-x64.tar.gz"
      sha256 "9f7bde89824f125ac4dbb64a8d514668d92b06641f3e88a39cc0e36a3cad5f3e"
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

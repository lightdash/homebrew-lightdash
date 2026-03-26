class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2672.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2672.0/lightdash-cli-0.2672.0-macos-arm64.tar.gz"
      sha256 "f11c7ac5b985c7ac8e178a017ace5c706a3c9cf205975536fa3ad3fdac0b5aa6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2672.0/lightdash-cli-0.2672.0-macos-x64.tar.gz"
      sha256 "076c6b1075c756a5ca35d6a80ebb79678c8ab32d28ea51edfbdf665fdce98d40"
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

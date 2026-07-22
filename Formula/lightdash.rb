class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3445.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3445.0/lightdash-cli-0.3445.0-macos-arm64.tar.gz"
      sha256 "105a1c2b869ac04c222038659a7abe471e77a89a733e54faea9b4edcd2a0c02b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3445.0/lightdash-cli-0.3445.0-macos-x64.tar.gz"
      sha256 "488bd13e72492fedec895f55a3e7275fc39a9ee4ecb54c784738ea4a496dc005"
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

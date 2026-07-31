class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.57.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.57.2/lightdash-cli-1.57.2-macos-arm64.tar.gz"
      sha256 "32e1428b233a530ee90db11b97a6e08a39e905cf0f782ee7b29124a6f53e4b18"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.57.2/lightdash-cli-1.57.2-macos-x64.tar.gz"
      sha256 "88554b440e09a34122581d6a5152f8e3bf38ce0adb99e115d9850e77f36e6e71"
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

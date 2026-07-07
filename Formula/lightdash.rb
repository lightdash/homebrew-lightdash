class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3317.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3317.1/lightdash-cli-0.3317.1-macos-arm64.tar.gz"
      sha256 "4d78f0b701d52f23a5e99b8c00f95a7c1c63c28bdaf126f8fe09282007a9f67b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3317.1/lightdash-cli-0.3317.1-macos-x64.tar.gz"
      sha256 "d540e2340ad7ee9be48ae06faffdce34c077ee28f69e07abd445cf8fc2497fec"
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

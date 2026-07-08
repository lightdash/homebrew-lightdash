class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3328.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3328.3/lightdash-cli-0.3328.3-macos-arm64.tar.gz"
      sha256 "81e59cc6e0afa631280dbaf793ff202c9a739d4da2c702d7135d11d041355f4b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3328.3/lightdash-cli-0.3328.3-macos-x64.tar.gz"
      sha256 "4ef0044685d88050f47258f92f01ae98e6c3811d78e49d58a5d94dbde16f24b9"
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

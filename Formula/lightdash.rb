class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3210.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3210.0/lightdash-cli-0.3210.0-macos-arm64.tar.gz"
      sha256 "bc9a8e7a593cefca6aab63c9d90375c98e868a1893f9263669e7c021798cefc8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3210.0/lightdash-cli-0.3210.0-macos-x64.tar.gz"
      sha256 "99662f8526ade12496a9c31abd3794aa9b653b65bfeb013be82a10826d520683"
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

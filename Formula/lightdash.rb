class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2748.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2748.1/lightdash-cli-0.2748.1-macos-arm64.tar.gz"
      sha256 "0e5ce2260547503da5219d7c7eb74d9b76f69ac008f6927a91973c0f28802abe"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2748.1/lightdash-cli-0.2748.1-macos-x64.tar.gz"
      sha256 "b140e54980d894aebb8a4adbaf90566b22e0d1ff6d477bffd16724cebec1bfed"
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

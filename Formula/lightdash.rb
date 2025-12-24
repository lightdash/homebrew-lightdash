class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2277.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2277.0/lightdash-cli-0.2277.0-macos-arm64.tar.gz"
      sha256 "7be27b9195be81ca0286a65ba1c5cd01641ab8d564825e4047e52ace460e9035"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2277.0/lightdash-cli-0.2277.0-macos-x64.tar.gz"
      sha256 "0de7326e3190db321134133e2e136983cea821d51ff04fc4a5f68b5591ec12db"
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

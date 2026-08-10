class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.113.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.113.0/lightdash-cli-1.113.0-macos-arm64.tar.gz"
      sha256 "c3ae1b23d65f05fbdbbb701be27a81594995d0bfd02a32c0e93aee7cd3c66821"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.113.0/lightdash-cli-1.113.0-macos-x64.tar.gz"
      sha256 "aa8dc4b3e04e6f6a0d365f1a1f34adf214ca301a2148e0eec5e9fe6eb9e6454f"
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

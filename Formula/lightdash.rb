class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2634.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2634.0/lightdash-cli-0.2634.0-macos-arm64.tar.gz"
      sha256 "aab701827f423d7d25cf216c78d41ff279de3cd28c3b36bf98d0321f54f78d0f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2634.0/lightdash-cli-0.2634.0-macos-x64.tar.gz"
      sha256 "07a4e400e18108011c27eb4f501fb4e3f898a89dc2180ae9fd79037a01e26775"
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

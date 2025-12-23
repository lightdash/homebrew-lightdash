class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2272.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2272.0/lightdash-cli-0.2272.0-macos-arm64.tar.gz"
      sha256 "ec07fb3ffe4e0e599b18111c5da8643a71b84aa71666a6ee30c05a7bc2419a7c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2272.0/lightdash-cli-0.2272.0-macos-x64.tar.gz"
      sha256 "d8f14796ebbb69181d9de1eb9e248a02d79afb8dcaf3f87f1f5e33f19675f34a"
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

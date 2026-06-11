class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3138.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3138.0/lightdash-cli-0.3138.0-macos-arm64.tar.gz"
      sha256 "06391f80c108e778771ca82f5410cf373f1f4c79fcd1fbaf442a0023906705c8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3138.0/lightdash-cli-0.3138.0-macos-x64.tar.gz"
      sha256 "e90dc6d3ff825d78aae05f60b6da7b85b08dcfabb70b01b2c25a3024f05e677d"
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

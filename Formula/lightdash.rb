class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2757.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2757.0/lightdash-cli-0.2757.0-macos-arm64.tar.gz"
      sha256 "9c0052c3bc04f63fc706fcf8dc986f2545aeef699deb4d19c3667278f2c5f5c7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2757.0/lightdash-cli-0.2757.0-macos-x64.tar.gz"
      sha256 "94f0acfd1b605cc5ef7dbcf4d1167bf18b58cc1e9cf7451655e0008521fc4879"
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

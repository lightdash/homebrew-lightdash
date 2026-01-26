class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2378.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2378.0/lightdash-cli-0.2378.0-macos-arm64.tar.gz"
      sha256 "9f6af28ad8c04d0c3c1c5a2e0ef44ed0f22e187e6516cb19bb842ab67edb416b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2378.0/lightdash-cli-0.2378.0-macos-x64.tar.gz"
      sha256 "6090b155822c4e2550ac917bcf5ec9cbde42104c422e4911e181e95b9311f7bc"
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

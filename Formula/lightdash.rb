class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3112.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3112.0/lightdash-cli-0.3112.0-macos-arm64.tar.gz"
      sha256 "0e54647e5c7fdd10cf7313b44ac0fb6ede679106191a2d362dedb56132b4db7e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3112.0/lightdash-cli-0.3112.0-macos-x64.tar.gz"
      sha256 "3aaee21d2dfaf5082f2b54bed416923d731eb20511a244378f97fa1039f2bd5f"
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

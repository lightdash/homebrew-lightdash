class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2657.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2657.2/lightdash-cli-0.2657.2-macos-arm64.tar.gz"
      sha256 "e7b59032d461cf6f4429daa521b1a758ee0fac0413298a352fef78053e4e2d27"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2657.2/lightdash-cli-0.2657.2-macos-x64.tar.gz"
      sha256 "28bc8b1354a32a6d990536f1de3236ca19275a72ef28d2fa5c493783c9a0da1c"
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

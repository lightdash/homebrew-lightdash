class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2838.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2838.0/lightdash-cli-0.2838.0-macos-arm64.tar.gz"
      sha256 "6acb9477940d574aff51801a1ec5e6a3a81d88f6fb565e8fc44cef316942569b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2838.0/lightdash-cli-0.2838.0-macos-x64.tar.gz"
      sha256 "30d1c41a146ae7a1250e7efdf6413e42831e1e45054008a836f0c06e8d597d6a"
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

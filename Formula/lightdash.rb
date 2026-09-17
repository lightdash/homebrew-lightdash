class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.255.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.255.3/lightdash-cli-2.255.3-macos-arm64.tar.gz"
      sha256 "9870e02c0ba35a3e7c86fb9882c5f68cfa857577e3b4e1b95c22cc5f29d32582"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.255.3/lightdash-cli-2.255.3-macos-x64.tar.gz"
      sha256 "ce59c11ac5fda4e8efbb166ed31d4bdf6aad3283e3a3acfaa1636c00b3ea8c19"
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

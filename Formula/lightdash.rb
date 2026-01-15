class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2343.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2343.0/lightdash-cli-0.2343.0-macos-arm64.tar.gz"
      sha256 "09f10f1f05c7972caf1e8500c676dbee010c8eaf288f19d47bb37eef118a4de8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2343.0/lightdash-cli-0.2343.0-macos-x64.tar.gz"
      sha256 "42f2813b87dfe384c562dd22729775d6b0b29599f7b45e14b2193489a9b513d3"
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

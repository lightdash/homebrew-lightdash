class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2802.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2802.0/lightdash-cli-0.2802.0-macos-arm64.tar.gz"
      sha256 "78bce709dfbff54f13d4fc7c8a96a3802f5a4c885da346c6357e1f2be1d15dc2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2802.0/lightdash-cli-0.2802.0-macos-x64.tar.gz"
      sha256 "3f5dd9a9720b3f81857b788cd1ac72c0eb04cc58f681c78e9635b22aea59c260"
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

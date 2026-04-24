class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2796.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2796.0/lightdash-cli-0.2796.0-macos-arm64.tar.gz"
      sha256 "2e81be97a50b3aa78b0bab07474d88c55291df3f448b2168884addad26fadfcb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2796.0/lightdash-cli-0.2796.0-macos-x64.tar.gz"
      sha256 "fd600f362ae5e9173910b7e98f5d4d06728c297828d278f1dc3ef0d458932a9e"
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

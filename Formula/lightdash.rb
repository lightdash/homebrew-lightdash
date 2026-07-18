class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3416.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3416.0/lightdash-cli-0.3416.0-macos-arm64.tar.gz"
      sha256 "7e6493ecd3b6bc67cf2a05cfb65cecb33767bec0e47da364704964a6ed9bcfca"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3416.0/lightdash-cli-0.3416.0-macos-x64.tar.gz"
      sha256 "cc333060d4f3c0fc99a598ebeeec0617e4d5216c7a3d381e406c32c4b9b0c44a"
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

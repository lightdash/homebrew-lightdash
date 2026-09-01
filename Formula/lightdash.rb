class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.75.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.75.1/lightdash-cli-2.75.1-macos-arm64.tar.gz"
      sha256 "093d5ff41075bbeed7dddfac9eedc9d7c6580553203832e7ec3d39f8ff4fab96"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.75.1/lightdash-cli-2.75.1-macos-x64.tar.gz"
      sha256 "65754dbd42c8198c421d87951cd5ff4ad8e6585bc8ceaf0c2c5e9a32d86f28eb"
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

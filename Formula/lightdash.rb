class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2301.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2301.0/lightdash-cli-0.2301.0-macos-arm64.tar.gz"
      sha256 "45a122ac88ee3435adaf91c213ab5d52f2216c46dfe6be5f6cf8d23fde98b9a5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2301.0/lightdash-cli-0.2301.0-macos-x64.tar.gz"
      sha256 "ed60a9cc3cf5ba8a3fbb4bf248d767bd523bab0dd8d8c6dce6b3b17f4339ed92"
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

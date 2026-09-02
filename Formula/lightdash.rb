class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.89.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.89.0/lightdash-cli-2.89.0-macos-arm64.tar.gz"
      sha256 "07e4140ee8973cd030cdf55df38c5d640ea4d6c0b6ba8292e79eabed1d056383"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.89.0/lightdash-cli-2.89.0-macos-x64.tar.gz"
      sha256 "d2bc447da1272c9843636fde55ff5d43882af433d42c81798a3693f1d56de08f"
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

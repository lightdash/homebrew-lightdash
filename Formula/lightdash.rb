class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2914.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2914.0/lightdash-cli-0.2914.0-macos-arm64.tar.gz"
      sha256 "18db97f2c8b1e9d86579b860bddac58ad8e6c1f1da5eeba7b3cc8f332b393ca6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2914.0/lightdash-cli-0.2914.0-macos-x64.tar.gz"
      sha256 "45bdf278f600910498dffeb062f4b6e70fcadad6424cbe577cf9742f9ccca895"
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

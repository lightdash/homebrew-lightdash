class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2350.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2350.0/lightdash-cli-0.2350.0-macos-arm64.tar.gz"
      sha256 "29de301bbd02de9196fd590976cb254137ea2d31161030b6f733139effecd8bb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2350.0/lightdash-cli-0.2350.0-macos-x64.tar.gz"
      sha256 "0d376481a6e3131930c00940f90d696a070fa932e2b676bbfa97f272dbeb54ca"
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

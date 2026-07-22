class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3444.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3444.0/lightdash-cli-0.3444.0-macos-arm64.tar.gz"
      sha256 "585494822297a6addc401f6511362cf55e44d9f3233e07ac6f13a49cc32fca7c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3444.0/lightdash-cli-0.3444.0-macos-x64.tar.gz"
      sha256 "eb7a6f58a6969477a51f5cc09cb0b5a5d2f16ca88d78fdcba8963216025268f0"
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

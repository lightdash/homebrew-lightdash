class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.110.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.110.1/lightdash-cli-2.110.1-macos-arm64.tar.gz"
      sha256 "9cab36053f1e644fa5e7ae5ff8ea623960bd63bb3aaef0be42a0b652148f477e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.110.1/lightdash-cli-2.110.1-macos-x64.tar.gz"
      sha256 "97f784d040267fe6a387b5e7e457975fec222bf75f66403dc31e09f33b323de2"
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

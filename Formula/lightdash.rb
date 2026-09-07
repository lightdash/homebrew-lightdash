class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.140.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.140.1/lightdash-cli-2.140.1-macos-arm64.tar.gz"
      sha256 "3bd0390b48bdb6833a2fc4bf7375d61746bf37569837bcac44afe3203139391e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.140.1/lightdash-cli-2.140.1-macos-x64.tar.gz"
      sha256 "a10f3da8c4fd28448ab5661bce5c8534cbfaf4f7fc05fbc0fa26fdfa8f532b54"
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

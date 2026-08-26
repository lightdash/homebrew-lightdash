class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.2.1/lightdash-cli-2.2.1-macos-arm64.tar.gz"
      sha256 "98b1e030a41d0c393e72656f5388ba44dd7c3c47e53a997d320799a563340b04"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.2.1/lightdash-cli-2.2.1-macos-x64.tar.gz"
      sha256 "de2601bd0dff29231b9a6c9eb84feca3474d554b9fee37c73be94677a88aaf38"
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

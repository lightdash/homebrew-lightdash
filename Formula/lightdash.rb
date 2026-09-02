class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.89.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.89.1/lightdash-cli-2.89.1-macos-arm64.tar.gz"
      sha256 "c24dc9263c7fa6fe56a25cb575bb4fcd9b44581806b19f7535f947551293ddb7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.89.1/lightdash-cli-2.89.1-macos-x64.tar.gz"
      sha256 "1154692f78a5bc8bab49175548e5ce002feb9bbf2ca2747e4eb31438a372bba4"
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

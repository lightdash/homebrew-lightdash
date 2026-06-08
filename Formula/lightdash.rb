class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3109.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3109.0/lightdash-cli-0.3109.0-macos-arm64.tar.gz"
      sha256 "555b6f6e6eef7b5b5a2a0c3ec7f8ac8dbd866c8d3557cc2665133ec035df1eab"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3109.0/lightdash-cli-0.3109.0-macos-x64.tar.gz"
      sha256 "7fad77ac81efbb68ebd4f32980c71c37cc22d224dae0eb06a72d9d6cce999618"
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

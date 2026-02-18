class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2484.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2484.0/lightdash-cli-0.2484.0-macos-arm64.tar.gz"
      sha256 "df2845da949957088027d9e6b1b7f95cf86853c8175125ec09f36de260ad69d8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2484.0/lightdash-cli-0.2484.0-macos-x64.tar.gz"
      sha256 "98327c0d65e954099ecdb9a225e33e31fe446adef09cb68033f5cc2061aabb7f"
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

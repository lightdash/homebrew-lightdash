class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2657.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2657.0/lightdash-cli-0.2657.0-macos-arm64.tar.gz"
      sha256 "d729ba73d123ab992f26cefa2ad0b7929741120473997fe7c257aeb84944610e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2657.0/lightdash-cli-0.2657.0-macos-x64.tar.gz"
      sha256 "9ce9ab5d3c92630c316076df9aaa8328ac29df4511b8b4e8b57f3a7642fad24c"
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

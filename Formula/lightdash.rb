class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3188.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3188.1/lightdash-cli-0.3188.1-macos-arm64.tar.gz"
      sha256 "85f83dedd71ee7c3a62e6171aa739482130a4f71364864efee8b977319c7d5ef"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3188.1/lightdash-cli-0.3188.1-macos-x64.tar.gz"
      sha256 "9e2273784058d3564c1f41d685d9a16662b21f47e2e1953573e3325b595fed70"
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

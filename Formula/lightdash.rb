class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2590.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2590.0/lightdash-cli-0.2590.0-macos-arm64.tar.gz"
      sha256 "3e7e2f30d3361d0cd4f444fa4a556268d3c2d324d17321166e0bd6d7b7c87b60"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2590.0/lightdash-cli-0.2590.0-macos-x64.tar.gz"
      sha256 "6795502717ac7c0fb1fbcdb19376f4402a508a3a12e409674dcf7a0efed8fda0"
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

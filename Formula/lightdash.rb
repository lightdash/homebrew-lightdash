class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.44.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.44.0/lightdash-cli-1.44.0-macos-arm64.tar.gz"
      sha256 "340ef4992e3be0d2e1da03d7d8aaf4b2bc062eff693c293131bcf759b7014068"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.44.0/lightdash-cli-1.44.0-macos-x64.tar.gz"
      sha256 "d3c90951292832aab028f6b8928edc684670301e09fdc068f2f831a733339b7e"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.159.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.159.5/lightdash-cli-1.159.5-macos-arm64.tar.gz"
      sha256 "db44c51fbf71330418bebcce6a5b1f0251306629543a66edd15df63cfbb3ab97"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.159.5/lightdash-cli-1.159.5-macos-x64.tar.gz"
      sha256 "5cf2e3fa93c49ddc3467a66b808e57a5e5069bd17762eda4c671147e124c5067"
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

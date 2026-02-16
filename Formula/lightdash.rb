class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2471.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2471.1/lightdash-cli-0.2471.1-macos-arm64.tar.gz"
      sha256 "ca8cc209b75e1f2b33e598b6fef1314cd0dae7fc416daa7675a20bc2a43b67ce"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2471.1/lightdash-cli-0.2471.1-macos-x64.tar.gz"
      sha256 "abfb4c68ae244fcf0ee999f6b47ae4de2572f7c7499cccb298dccfdbb1fc7a97"
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

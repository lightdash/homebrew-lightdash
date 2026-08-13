class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.152.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.152.0/lightdash-cli-1.152.0-macos-arm64.tar.gz"
      sha256 "62d0b3ea641f414dc99821fb6470406e14fc0b9eea2f5f18a1fb6706ed0d703f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.152.0/lightdash-cli-1.152.0-macos-x64.tar.gz"
      sha256 "b62b2afa4589496607f1d3cb333028db488a0827f64403944a1e4d6f8003409c"
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

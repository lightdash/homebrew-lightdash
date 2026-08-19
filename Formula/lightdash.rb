class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.202.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.202.7/lightdash-cli-1.202.7-macos-arm64.tar.gz"
      sha256 "23e1a163e5b3b71233cd13168bbb2891470678d2d414caa27c1c55cb600e6386"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.202.7/lightdash-cli-1.202.7-macos-x64.tar.gz"
      sha256 "af687335a978eb62446c83347d3a380ce9e064db1c47b65d253852844d2b5539"
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

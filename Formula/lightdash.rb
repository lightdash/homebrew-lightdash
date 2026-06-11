class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3143.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3143.0/lightdash-cli-0.3143.0-macos-arm64.tar.gz"
      sha256 "eabefa9878c36389671567e56366a52326b42a12e47f694224f03275aca3d767"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3143.0/lightdash-cli-0.3143.0-macos-x64.tar.gz"
      sha256 "651a0a320184d2eb0726c8ab808412b4b983588a1863e0b451223f61d37d2e88"
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

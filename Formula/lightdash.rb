class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2611.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2611.0/lightdash-cli-0.2611.0-macos-arm64.tar.gz"
      sha256 "052ba45ed4114921c71e9d461fef46324f5eea2031af187a3edfdede1f00fac8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2611.0/lightdash-cli-0.2611.0-macos-x64.tar.gz"
      sha256 "d7283f784652e7c60b791e82be0fe10732e66b5f654e16df515e903f95fe651f"
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

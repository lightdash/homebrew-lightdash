class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2518.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2518.0/lightdash-cli-0.2518.0-macos-arm64.tar.gz"
      sha256 "561edd6561ce823c9ae62faeb25e8825fbeb59d0f7d3b76200fbaccca8d19db4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2518.0/lightdash-cli-0.2518.0-macos-x64.tar.gz"
      sha256 "5739b97d05f24597f88f0e4ad4f6ca0e78221d16e9db4e4cd8694b4401db2885"
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

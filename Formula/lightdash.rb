class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.29.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.29.0/lightdash-cli-2.29.0-macos-arm64.tar.gz"
      sha256 "cce508fe7c8ec2c980a4e70bb7d3ae2c307d055578db61e36c37a4810b310c31"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.29.0/lightdash-cli-2.29.0-macos-x64.tar.gz"
      sha256 "41d15bc56abd484c22f2fb12b596d81927e15a586b371c6820db74b7bd63ca93"
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

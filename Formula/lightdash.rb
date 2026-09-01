class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.81.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.81.0/lightdash-cli-2.81.0-macos-arm64.tar.gz"
      sha256 "205369a86c63df4feb5d9780575aa2cc8fdd4f10543502a06448001e2328ae44"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.81.0/lightdash-cli-2.81.0-macos-x64.tar.gz"
      sha256 "0160751cdf9d639c127167b6d344b384f35a75b1dfe3929eebaf957b2b8c14e1"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.154.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.154.1/lightdash-cli-1.154.1-macos-arm64.tar.gz"
      sha256 "7ff49d7f2015f20af0516d41212801f182ec809f0bd56e381fec29f06c161aee"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.154.1/lightdash-cli-1.154.1-macos-x64.tar.gz"
      sha256 "2001e0320a3ea8516976ce8e1af5ee75790cdc841274a00a4d957d8bfc598b48"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.72.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.72.1/lightdash-cli-2.72.1-macos-arm64.tar.gz"
      sha256 "844e2e2269d9eba2f48c206d040d49eafcb5cec46e60e4878f2632084a8d5122"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.72.1/lightdash-cli-2.72.1-macos-x64.tar.gz"
      sha256 "25fc358fe88256534c6f6dca5f5e4e37b100fb9852f7d78bce178a828206682a"
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

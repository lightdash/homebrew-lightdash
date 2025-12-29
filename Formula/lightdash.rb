class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2282.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2282.3/lightdash-cli-0.2282.3-macos-arm64.tar.gz"
      sha256 "71c37996a1deb0b218c2086bc12279b074fea84bf60a887ce98f5f53338fc8c9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2282.3/lightdash-cli-0.2282.3-macos-x64.tar.gz"
      sha256 "c2bc9031eb106fdb55a38bafc07bbef04330b302a07858d23576bbcdacf5f463"
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

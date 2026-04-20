class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2764.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2764.10/lightdash-cli-0.2764.10-macos-arm64.tar.gz"
      sha256 "09018e3aa1d96604d7ab9574819f22171abd06e6b7308a23b69f1b333fb72839"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2764.10/lightdash-cli-0.2764.10-macos-x64.tar.gz"
      sha256 "435f6721f30cf58e9fff76cce61565156e1343b4e67a12dfeb27282a64a88057"
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

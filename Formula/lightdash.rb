class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.251.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.251.0/lightdash-cli-2.251.0-macos-arm64.tar.gz"
      sha256 "dbc0865f2a94396baa11ca62ce1871d76822f55953203884e175a27dee47a5cf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.251.0/lightdash-cli-2.251.0-macos-x64.tar.gz"
      sha256 "04edfbd4efd7f04f8bccf64574700e07a7a7ab184ec19d389c6753b322b70f4b"
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

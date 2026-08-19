class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.206.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.206.2/lightdash-cli-1.206.2-macos-arm64.tar.gz"
      sha256 "cbda31c64512a4ab57fb47d2d14776876da969fc8f9e6f8a18466b4aa6babcef"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.206.2/lightdash-cli-1.206.2-macos-x64.tar.gz"
      sha256 "648d2e1a099d9ba08869bb68384396c5d6f3e8d963ac4ac2913c588c57317f34"
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

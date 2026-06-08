class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3105.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3105.0/lightdash-cli-0.3105.0-macos-arm64.tar.gz"
      sha256 "d7dbe4c92e3c1c31f78cd129435ade5f114314dbdbe4040fbb5e7655c2288cd8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3105.0/lightdash-cli-0.3105.0-macos-x64.tar.gz"
      sha256 "3f4147004894eb622e5e8b5c06fde77483621b310a4ec36883498201f541eeaa"
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

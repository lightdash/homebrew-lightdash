class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2864.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2864.0/lightdash-cli-0.2864.0-macos-arm64.tar.gz"
      sha256 "8d0ab1cdf7cf24c4ad9ddbdfdc45e8516e782980b8168beaa15b75f9a1236af8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2864.0/lightdash-cli-0.2864.0-macos-x64.tar.gz"
      sha256 "496f9197a924efa190c5994761081e7164cfa4208c1b76e4cf6e8a6aaf4909fd"
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

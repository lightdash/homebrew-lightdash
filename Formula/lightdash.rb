class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.238.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.238.1/lightdash-cli-2.238.1-macos-arm64.tar.gz"
      sha256 "0863bbbc3b23d17d80b7d5e52d6e7e4f91d2d819f841bdce6def26f71490d542"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.238.1/lightdash-cli-2.238.1-macos-x64.tar.gz"
      sha256 "a91f3cdbab5242dc72ff110dfc43ca1a2b49cdfdc81e724bf97d356f8d2868da"
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

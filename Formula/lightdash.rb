class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3254.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3254.1/lightdash-cli-0.3254.1-macos-arm64.tar.gz"
      sha256 "e35f3bf1517ed039901319d5bffb6282aa841a91e51022f43935687ac2c1bf04"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3254.1/lightdash-cli-0.3254.1-macos-x64.tar.gz"
      sha256 "7346fee79efaab4d25371da8ec75c74864cc81a708a1e2e8ab3669850c00708f"
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

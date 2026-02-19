class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2498.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2498.0/lightdash-cli-0.2498.0-macos-arm64.tar.gz"
      sha256 "ad3ef708a69587a7cf1ee69894cf20d3a59810a6033ea7fe009b68032838fb25"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2498.0/lightdash-cli-0.2498.0-macos-x64.tar.gz"
      sha256 "9a91b280068a894ed04cd6e9f8c040e4160eea302b55e6333b85383eaf5d6ed6"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.159.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.159.6/lightdash-cli-1.159.6-macos-arm64.tar.gz"
      sha256 "a52e620860b37ea01301aafd9804815a8c98d73526f629ecd0722976d64822f0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.159.6/lightdash-cli-1.159.6-macos-x64.tar.gz"
      sha256 "e72e65424bfea07326fe60a3157e0880d62134a84638cf42463ac57555f5e802"
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

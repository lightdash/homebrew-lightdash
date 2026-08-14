class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.158.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.158.1/lightdash-cli-1.158.1-macos-arm64.tar.gz"
      sha256 "20c1137eb109738f218f800b444e5b8f9a8c9e856136953159efa205e502f7aa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.158.1/lightdash-cli-1.158.1-macos-x64.tar.gz"
      sha256 "c4fb77a0a370fb963b032545556f6e7085ec06e5add61a52778c1cb2b924ea87"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3313.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3313.0/lightdash-cli-0.3313.0-macos-arm64.tar.gz"
      sha256 "0abd992d31babf331b6c076fe3bb58e074a0f0dc2b64621cf7cd50cd9f68d936"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3313.0/lightdash-cli-0.3313.0-macos-x64.tar.gz"
      sha256 "05ffecebb3ce2bb8f47411a13fe5115e565b3efa2203ea72190c3b17f044f55c"
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

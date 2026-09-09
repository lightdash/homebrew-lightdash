class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.170.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.170.1/lightdash-cli-2.170.1-macos-arm64.tar.gz"
      sha256 "21a65062c2a30ff21734a222c51cbe21c85781359b5c330de76d2aac42519dca"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.170.1/lightdash-cli-2.170.1-macos-x64.tar.gz"
      sha256 "1e95086dfc5f11bfeb4f843753299c31e681ba2a6fc9a80e2b85b440e685cea0"
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

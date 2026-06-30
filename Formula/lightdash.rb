class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3268.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3268.0/lightdash-cli-0.3268.0-macos-arm64.tar.gz"
      sha256 "6f7447c4f2c52468bbb322597564a990c468756056fddd58f10e4fcac8491772"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3268.0/lightdash-cli-0.3268.0-macos-x64.tar.gz"
      sha256 "8d8474aaf0afb596a4ed754e83297446b2c162913281c3825869ed7d8bd6f334"
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

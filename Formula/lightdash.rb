class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2710.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2710.0/lightdash-cli-0.2710.0-macos-arm64.tar.gz"
      sha256 "1a9704481c9740121ca4e44e1df100bac5de209d5c72293e7670d9671281ae8b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2710.0/lightdash-cli-0.2710.0-macos-x64.tar.gz"
      sha256 "394d1980834ff585cb53c77f94c49d34bd634975fc76317cd8f630df3eb57e8e"
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

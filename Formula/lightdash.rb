class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.213.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.213.0/lightdash-cli-2.213.0-macos-arm64.tar.gz"
      sha256 "45542005fadd0c3cfeb2f85bae55af894817809aff9e87752e43f43ab1982776"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.213.0/lightdash-cli-2.213.0-macos-x64.tar.gz"
      sha256 "e58e93f01d38af30d2de87c6039493a906a488503a0dcab7e7a26540eeb21c68"
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

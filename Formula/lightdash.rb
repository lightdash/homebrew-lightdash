class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3254.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3254.0/lightdash-cli-0.3254.0-macos-arm64.tar.gz"
      sha256 "2a276f20cc9300b1a7a111c58561c41c691bfbc9ef182802ca16e35df0c6cab6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3254.0/lightdash-cli-0.3254.0-macos-x64.tar.gz"
      sha256 "5111d2810833cd78d0c8d0cbae57696bb0837a259b41b8e512fd929ed6f66bcf"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.91.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.91.3/lightdash-cli-1.91.3-macos-arm64.tar.gz"
      sha256 "9bed1a91f7d9a141b4c10ed38887931e4d6711d439976b1f6bf0c6e2557ab1fa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.91.3/lightdash-cli-1.91.3-macos-x64.tar.gz"
      sha256 "a3accce496a582f26ee167b5ba7baab17b3f575b497d73dfb83997e3d7eccbd2"
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

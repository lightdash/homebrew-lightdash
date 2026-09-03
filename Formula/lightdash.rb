class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.104.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.104.1/lightdash-cli-2.104.1-macos-arm64.tar.gz"
      sha256 "15eedd471d5058a18bd5fbc3823d8340e76a91d271f41456dad87305105613d6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.104.1/lightdash-cli-2.104.1-macos-x64.tar.gz"
      sha256 "2efcf15c2234fba64956d76bee32a35a4331886f6051cc2d07269a927c841603"
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

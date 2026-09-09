class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.167.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.167.3/lightdash-cli-2.167.3-macos-arm64.tar.gz"
      sha256 "541e6f842d285221409f761c6405a71da82155a6756675ee0fd4b58a1175c837"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.167.3/lightdash-cli-2.167.3-macos-x64.tar.gz"
      sha256 "889a166214b47382d09de3a28f009e56f8ab929419fdc14db013889067a06df2"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2538.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2538.2/lightdash-cli-0.2538.2-macos-arm64.tar.gz"
      sha256 "5282b6b1b595695a913c2b6368891309b2a525c738b2a06db039be95ebfa2845"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2538.2/lightdash-cli-0.2538.2-macos-x64.tar.gz"
      sha256 "0dcc92f9644797810a3c670da4a4ae615887e6056ae63008df5a2479a5fa91f2"
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

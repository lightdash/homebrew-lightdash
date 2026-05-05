class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2865.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2865.2/lightdash-cli-0.2865.2-macos-arm64.tar.gz"
      sha256 "321655cfaf15021bd903f10411c452a7c26813618fe79ad19f58f9ab1c46045d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2865.2/lightdash-cli-0.2865.2-macos-x64.tar.gz"
      sha256 "eabbe729614027c6cd8b919486fb5f14998eb1db024c071ad034d73b558b86d4"
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

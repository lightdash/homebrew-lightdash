class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2709.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2709.3/lightdash-cli-0.2709.3-macos-arm64.tar.gz"
      sha256 "82c52241c7d1c402fa5e0811e45c87232565f8fafa6fa73936b243ec81f05778"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2709.3/lightdash-cli-0.2709.3-macos-x64.tar.gz"
      sha256 "3c113359e46e52387d15b2cd6d237ed5e5803aaadaa8c89a9ccf61cb575d3265"
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

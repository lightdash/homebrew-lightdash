class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2435.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2435.0/lightdash-cli-0.2435.0-macos-arm64.tar.gz"
      sha256 "d827391fb2d696532c2d4f6c05ff22ba2cd2f4989c39c136fd91a69d1fde412d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2435.0/lightdash-cli-0.2435.0-macos-x64.tar.gz"
      sha256 "e590ab5efe103e57bfe15ffb4b4933837932ead345b213383fd8e768287d52a7"
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

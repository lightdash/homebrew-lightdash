class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.184.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.184.0/lightdash-cli-2.184.0-macos-arm64.tar.gz"
      sha256 "888846cc5318c3d751dda11bef3ca010153595cf69712944b68fa0492711dac6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.184.0/lightdash-cli-2.184.0-macos-x64.tar.gz"
      sha256 "658779a4980aeb613fd9ba69b955cb8d2287f18fd43bc208fd1f46b9d651831e"
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

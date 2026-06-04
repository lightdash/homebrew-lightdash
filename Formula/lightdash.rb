class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3097.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3097.0/lightdash-cli-0.3097.0-macos-arm64.tar.gz"
      sha256 "5f4825838608efec32082d5d90eb6b2e7cedca2ed7b55454202e97990e907115"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3097.0/lightdash-cli-0.3097.0-macos-x64.tar.gz"
      sha256 "bd97a744e805de54d963b0351499519c41d8e2211451c4d0a48e27cd8eb3721e"
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

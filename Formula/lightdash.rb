class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.24.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.24.0/lightdash-cli-2.24.0-macos-arm64.tar.gz"
      sha256 "15f412e25368409474f31c629294243d07ed07ab25dd4d6aa8f5c2470798d8b4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.24.0/lightdash-cli-2.24.0-macos-x64.tar.gz"
      sha256 "6526ae59d11188463defeeb1fd39c53977cd37614d4ab03e4865772bd87a9f23"
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

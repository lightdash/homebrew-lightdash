class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3150.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3150.0/lightdash-cli-0.3150.0-macos-arm64.tar.gz"
      sha256 "ca9406e07fb0a88a9557d6664a83fe6048988b5faa2098d524f033eeb6c8c7c0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3150.0/lightdash-cli-0.3150.0-macos-x64.tar.gz"
      sha256 "bcae3dfd8283b029a5df67bb6ba3235bf4f1957347d0a7c6da42ce60a4526525"
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

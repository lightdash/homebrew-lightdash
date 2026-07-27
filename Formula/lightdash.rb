class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3479.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3479.0/lightdash-cli-0.3479.0-macos-arm64.tar.gz"
      sha256 "241a4228a2b7b9be2b23ac536aec8aea234f5208ff6c2b8a5c75357f2fa3863e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3479.0/lightdash-cli-0.3479.0-macos-x64.tar.gz"
      sha256 "81485ddaa04a0cf4d69f446e8d3f7c3f7355c59dd75ef154bac19ab688c6005e"
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

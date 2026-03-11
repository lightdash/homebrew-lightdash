class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2603.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2603.0/lightdash-cli-0.2603.0-macos-arm64.tar.gz"
      sha256 "04f2b5d66fcb5d0faf0c3d8f062749028d4bcef537d221afba934039af570817"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2603.0/lightdash-cli-0.2603.0-macos-x64.tar.gz"
      sha256 "b5a408064f9639132c38e6217f9a84d09ff079403df7364ab9ead37fbbdb1148"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3260.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3260.0/lightdash-cli-0.3260.0-macos-arm64.tar.gz"
      sha256 "c19dfba4316255da4155015800f210014279db8e9096a1e1d66f23fd4b0d80de"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3260.0/lightdash-cli-0.3260.0-macos-x64.tar.gz"
      sha256 "2c0721e184f59de162de213a29108c2ec1d211ebfe211e684f89e2e43c0f612f"
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

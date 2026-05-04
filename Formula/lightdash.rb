class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2864.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2864.2/lightdash-cli-0.2864.2-macos-arm64.tar.gz"
      sha256 "6d3fb59d67d7d41f5731662e8e53fd74c03a9f2773cd55d5845a8c35759de2b4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2864.2/lightdash-cli-0.2864.2-macos-x64.tar.gz"
      sha256 "1a6152eceb9f16af4a14e9f42d1da0940a5524f96ed9880e24eb030b3cdad01f"
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

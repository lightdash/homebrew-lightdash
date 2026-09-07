class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.142.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.142.0/lightdash-cli-2.142.0-macos-arm64.tar.gz"
      sha256 "c48e6de90531d5a12826b10a2e0e8f386edf0bea1c63303c226a864b297a8500"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.142.0/lightdash-cli-2.142.0-macos-x64.tar.gz"
      sha256 "ce9de9392a9d457e1ede22c5c45ac4deabe943e149f283b5de99b4fcbf036bf1"
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

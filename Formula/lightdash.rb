class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2372.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2372.0/lightdash-cli-0.2372.0-macos-arm64.tar.gz"
      sha256 "e015a51964211f1d2aa1d01d854c6906d7b8feeef12bf81a203b58411f8cecb8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2372.0/lightdash-cli-0.2372.0-macos-x64.tar.gz"
      sha256 "d520e53a758198437c709c6614cab580e4ec6c419d01473f4398af9095e94079"
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

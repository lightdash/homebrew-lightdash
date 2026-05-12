class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2923.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2923.0/lightdash-cli-0.2923.0-macos-arm64.tar.gz"
      sha256 "7944bd62210d4e23822b616a0ce2b490574eeba20a477f688a24df9750d66943"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2923.0/lightdash-cli-0.2923.0-macos-x64.tar.gz"
      sha256 "3841675a8f86788dcdf4726428164e361e7a0a5202d9516e908cd26731e2d323"
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

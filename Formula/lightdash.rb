class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2775.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2775.2/lightdash-cli-0.2775.2-macos-arm64.tar.gz"
      sha256 "4d04f10c8c3bc48ade0b6dfccfb650e06f39cf3cd5ff833d093cecb5a4b6bf76"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2775.2/lightdash-cli-0.2775.2-macos-x64.tar.gz"
      sha256 "f00b06176bd4d93282bc2c520f8a2a7d61ccf115f5c95c2c46b01454c0e64fde"
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

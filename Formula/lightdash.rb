class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2246.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2246.0/lightdash-cli-0.2246.0-macos-arm64.tar.gz"
      sha256 "e65303acd4f972adf8ef3c952e43ad57d0e72bbb1dc027978bae5f8262c69adc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2246.0/lightdash-cli-0.2246.0-macos-x64.tar.gz"
      sha256 "b3e316bbf75d2d400ba34c5835938d2bb30339df7a998e43f1c0a2b1285ac9d4"
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

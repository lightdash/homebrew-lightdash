class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.64.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.64.2/lightdash-cli-2.64.2-macos-arm64.tar.gz"
      sha256 "6eb0f165e73cc8b0d6fcf0c8e83573224a75bf2c0db9b06d3e7cd27ff6c9ae40"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.64.2/lightdash-cli-2.64.2-macos-x64.tar.gz"
      sha256 "2c6ac05fe52b68606fc75434a3e5036d176c0625c908f04be9c895b73bd4fd24"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3120.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3120.0/lightdash-cli-0.3120.0-macos-arm64.tar.gz"
      sha256 "404419515e671aef5f7fbaed3de3b956097fc12d99237e8889d67a0637e700fe"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3120.0/lightdash-cli-0.3120.0-macos-x64.tar.gz"
      sha256 "bec88851875e11769f88ffbd2aecbe842c5fb22892c6dc7bc324d4c0d3f2a848"
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

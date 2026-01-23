class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2372.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2372.1/lightdash-cli-0.2372.1-macos-arm64.tar.gz"
      sha256 "69c3f9b641fcbc872adf1f6d6edd3b9d2a6ae663fb347ee9d3cb6082580d24d8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2372.1/lightdash-cli-0.2372.1-macos-x64.tar.gz"
      sha256 "e3edeedad324b9710644da230de34cca9efd5cbe5d96f35509a4520717c98c44"
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

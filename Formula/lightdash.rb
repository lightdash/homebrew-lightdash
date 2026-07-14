class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3378.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3378.0/lightdash-cli-0.3378.0-macos-arm64.tar.gz"
      sha256 "26a644607eae7f5a3e1c82de48b055103a38c55eb76a36139a6981b7193910e7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3378.0/lightdash-cli-0.3378.0-macos-x64.tar.gz"
      sha256 "c6d90577e618dfeea0c4c149f22df84cd68625acba543126e9cf265dc97d3a03"
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

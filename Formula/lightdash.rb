class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3138.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3138.1/lightdash-cli-0.3138.1-macos-arm64.tar.gz"
      sha256 "dada9b9b06e26acf293db5bc5da9f53907b7e55a953d3876cc9fd3f27912a05f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3138.1/lightdash-cli-0.3138.1-macos-x64.tar.gz"
      sha256 "7fb2702343ade515afb6ece5dbf7ef0b0e41dd9686c5a712bfa0a463fa31b615"
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

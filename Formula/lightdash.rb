class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.146.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.146.5/lightdash-cli-1.146.5-macos-arm64.tar.gz"
      sha256 "8f5e83af16db8b9de48d054819245e95b4137aa800b7c80932e46f745b0d367a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.146.5/lightdash-cli-1.146.5-macos-x64.tar.gz"
      sha256 "4f4a02344ca871ffc6b4b1af8189f404100f4d11bc0f0e7731331e6bb97b5f8c"
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

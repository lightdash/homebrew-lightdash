class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.258.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.258.1/lightdash-cli-1.258.1-macos-arm64.tar.gz"
      sha256 "a084c99c72feefb6c47bb5f1ad7227aa44a6fb9b8d9ceccc718ba1d14b503209"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.258.1/lightdash-cli-1.258.1-macos-x64.tar.gz"
      sha256 "7d1f4299e4d785d5ca7baf49f8a60ec1ad0aea1680ee8c48d3c1b3b1aa4d289a"
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

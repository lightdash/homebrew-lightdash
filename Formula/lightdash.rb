class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2863.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2863.0/lightdash-cli-0.2863.0-macos-arm64.tar.gz"
      sha256 "3ba07e8d938d0801af893d28ae8af9635055996302517459635ff2d1aa502901"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2863.0/lightdash-cli-0.2863.0-macos-x64.tar.gz"
      sha256 "c7571c82252baf37e85f2c5920382d335d07bc64897f34b3abb683f973c2d46b"
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

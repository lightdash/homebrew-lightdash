class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3292.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3292.0/lightdash-cli-0.3292.0-macos-arm64.tar.gz"
      sha256 "494312d51c03ae499c7cbc4e76716f98643f6da96e49c1d50f7c4c8de670b38b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3292.0/lightdash-cli-0.3292.0-macos-x64.tar.gz"
      sha256 "dbed6225df45965a8619620a0f5217cd38fe38f9ebd5667a0b1263972eb955f1"
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

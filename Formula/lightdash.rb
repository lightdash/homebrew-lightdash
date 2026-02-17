class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2476.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2476.1/lightdash-cli-0.2476.1-macos-arm64.tar.gz"
      sha256 "b2698e2e9b354469be261a7b9326e77d199633005887a24396da430f77c4d325"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2476.1/lightdash-cli-0.2476.1-macos-x64.tar.gz"
      sha256 "3871fd49a919b13deed9800ec74db05fce952cd8033851c45c2a0b8e66fc6c2e"
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

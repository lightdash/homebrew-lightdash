class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2918.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2918.0/lightdash-cli-0.2918.0-macos-arm64.tar.gz"
      sha256 "f30f687db4a70ebdf64e6bfcd038e2f5a4a8bfaf71269b3435657ec457d225b8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2918.0/lightdash-cli-0.2918.0-macos-x64.tar.gz"
      sha256 "798a8562d04f1670d2088da66a131dcf68fb58e4425f3427197c37dbced58336"
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

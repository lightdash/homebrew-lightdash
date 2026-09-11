class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.198.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.198.1/lightdash-cli-2.198.1-macos-arm64.tar.gz"
      sha256 "ddb4c2636ecbd768e7d970e47634423cbb508b4ff256f5d189790ffd4783b02e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.198.1/lightdash-cli-2.198.1-macos-x64.tar.gz"
      sha256 "f77c7c102ef261f9d6b376656c752088ef316f9cdebcb2c989137097a2b1a5d0"
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

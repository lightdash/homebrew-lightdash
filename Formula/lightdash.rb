class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2720.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2720.3/lightdash-cli-0.2720.3-macos-arm64.tar.gz"
      sha256 "226b4e87a26e9c7d1722bf75bbf6220fbba9c863e7dd3aa5d225a88dba1a223f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2720.3/lightdash-cli-0.2720.3-macos-x64.tar.gz"
      sha256 "d9f6ab9ce2807645782cfa779466d12cf6739e4ff31bb9d18797fee977a093a7"
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

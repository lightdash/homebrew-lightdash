class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.46.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.46.1/lightdash-cli-2.46.1-macos-arm64.tar.gz"
      sha256 "f340451907012bdbbcb23c4af8d3e9a831387435a50ded8bdb3a506932bacb0f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.46.1/lightdash-cli-2.46.1-macos-x64.tar.gz"
      sha256 "b9d01c7a7410951878b34ee2859215b010b92753565ef54aaa4e99ff573e517c"
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

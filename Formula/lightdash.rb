class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.26.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.26.1/lightdash-cli-2.26.1-macos-arm64.tar.gz"
      sha256 "6e42c4749b22969db439b4c11117076e870a977024ed484d72bd907e288e1683"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.26.1/lightdash-cli-2.26.1-macos-x64.tar.gz"
      sha256 "e1322a9d946f6eb46dc9186a5e37407825cfd7401aeee2f5a559d44c583c6220"
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

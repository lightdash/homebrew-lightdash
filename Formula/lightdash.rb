class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2675.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2675.2/lightdash-cli-0.2675.2-macos-arm64.tar.gz"
      sha256 "f9065c7dcfec058f2ef419970ffbba13f4f426c12f040e05bf83a5caabd25093"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2675.2/lightdash-cli-0.2675.2-macos-x64.tar.gz"
      sha256 "4b77412339c842664e303c494fde97f5ae4c7717d7c73d9b2a74081fb33a627e"
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

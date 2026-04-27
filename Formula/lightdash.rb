class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2813.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2813.2/lightdash-cli-0.2813.2-macos-arm64.tar.gz"
      sha256 "63c86cb75f50a4d4e4dc11df44a620fc15c57614fd4891daca4746c21f701ea7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2813.2/lightdash-cli-0.2813.2-macos-x64.tar.gz"
      sha256 "eddaf43894392287a3e3bb295bebda571919c80cb71b29f41de0203f0fa3af1d"
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

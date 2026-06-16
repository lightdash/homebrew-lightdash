class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3179.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3179.0/lightdash-cli-0.3179.0-macos-arm64.tar.gz"
      sha256 "98a83a37d31afd888cb2ef1948c20703ac7804a51ef90606881cf6013df34ad1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3179.0/lightdash-cli-0.3179.0-macos-x64.tar.gz"
      sha256 "6c1839033d108b903b7c1d3be31c334ef8daf17a9a8b5dfbcad5b6b684b6be31"
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

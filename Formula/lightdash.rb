class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2269.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2269.1/lightdash-cli-0.2269.1-macos-arm64.tar.gz"
      sha256 "0cf6b8e0c7d773acb459b6157a60d3eb8c1214b30f975e4df53bce844b0d3546"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2269.1/lightdash-cli-0.2269.1-macos-x64.tar.gz"
      sha256 "7fa617ae08be05ba16f68322ce96dbf60bb98768a6c16b83cd93c1e7597be851"
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

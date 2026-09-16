class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.241.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.241.0/lightdash-cli-2.241.0-macos-arm64.tar.gz"
      sha256 "f74091d4ee98a92d50917b5824024f38f53c8f65d1cc3fff2224f004f20de2dc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.241.0/lightdash-cli-2.241.0-macos-x64.tar.gz"
      sha256 "63f3135e9a7c151338fff3aa2327f00a8c5beb3f301f60fc40f5400cdc4bb8fd"
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

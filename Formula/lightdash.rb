class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.207.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.207.0/lightdash-cli-1.207.0-macos-arm64.tar.gz"
      sha256 "34a74fb1604fe670f510d106de5757018e465844a4faa297afc331c79c351932"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.207.0/lightdash-cli-1.207.0-macos-x64.tar.gz"
      sha256 "cca82d3e194d5d6db17d829aa0e470bb619c3f78be21e421f8c351c2b3fa6951"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.130.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.130.1/lightdash-cli-1.130.1-macos-arm64.tar.gz"
      sha256 "a4153f6926bfe7f3cd50808992c0612f5e986b3896062d95083a13ba5afd3164"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.130.1/lightdash-cli-1.130.1-macos-x64.tar.gz"
      sha256 "f90da169ec5a5b3ad0f08a19cc8c9fc5559890c656172279da1f0fcdc3c2f185"
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

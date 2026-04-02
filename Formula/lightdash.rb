class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2709.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2709.8/lightdash-cli-0.2709.8-macos-arm64.tar.gz"
      sha256 "6501310b795e0f098ffde91c26d67751c9a2a058f900faf3f842f81e07479657"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2709.8/lightdash-cli-0.2709.8-macos-x64.tar.gz"
      sha256 "d580bfda7e81541fa88993a7b4dbf5110d37494cbcfbd3b76aea15cd785f5216"
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

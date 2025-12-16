class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2254.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2254.0/lightdash-cli-0.2254.0-macos-arm64.tar.gz"
      sha256 "b56eb3add4d3f2d3c5c97775474bcbf1765a4e4f35a08016436bf12da4e03c11"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2254.0/lightdash-cli-0.2254.0-macos-x64.tar.gz"
      sha256 "209172d218c85f9b77bcaa4e3d1a81b2617c8c8b2846f5d0ad7758bab22ff598"
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

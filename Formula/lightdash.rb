class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3304.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3304.0/lightdash-cli-0.3304.0-macos-arm64.tar.gz"
      sha256 "b1a3732c11c95427e2f485d886a7edc1df8b6746c69f6e5acf155ef6155779b8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3304.0/lightdash-cli-0.3304.0-macos-x64.tar.gz"
      sha256 "0c4ed53518e065dd84665ff31cf0bdfed4b543192c2dc9589915930e43023858"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2188.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2188.1/lightdash-cli-0.2188.1-macos-arm64.tar.gz"
      sha256 "b4f22e1eeeab47b2726d137df4eafccbd805625933fe6826b68db15dcd29a30e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2188.1/lightdash-cli-0.2188.1-macos-x64.tar.gz"
      sha256 "8a85a7879e6a1d545df8448b912a85d5c172962af0cda4677a7422edccca9595"
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

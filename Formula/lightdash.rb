class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.72.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.72.0/lightdash-cli-2.72.0-macos-arm64.tar.gz"
      sha256 "687bae8e3eeec5906d293366c5917cd756faafb81c22e6d3b75cba893e81ebfc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.72.0/lightdash-cli-2.72.0-macos-x64.tar.gz"
      sha256 "fef67d46fcbbf7ac21177bb93a6e4c70cbd6feee75a7508564fb38ff69340d0a"
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

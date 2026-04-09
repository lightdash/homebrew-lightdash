class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2740.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2740.2/lightdash-cli-0.2740.2-macos-arm64.tar.gz"
      sha256 "4002b4cb42f15ac80c9f717effe2c3b58659407d6579c0b916a1d56fee32893f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2740.2/lightdash-cli-0.2740.2-macos-x64.tar.gz"
      sha256 "1295ed51213a955933773c2df14fe356ed19e1d32392dd8ac4a19a7a2f6c5416"
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

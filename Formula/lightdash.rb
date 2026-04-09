class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2742.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2742.3/lightdash-cli-0.2742.3-macos-arm64.tar.gz"
      sha256 "b990137f941c2039fac8bde8eb69d7da432d941b4095d6b19318ffbcfdac5faa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2742.3/lightdash-cli-0.2742.3-macos-x64.tar.gz"
      sha256 "020698a304e7feb1cc0e0285fa84f365203210ab340d54fe9d3a0bc24272b4e6"
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

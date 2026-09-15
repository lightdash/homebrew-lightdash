class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.215.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.215.3/lightdash-cli-2.215.3-macos-arm64.tar.gz"
      sha256 "e15b3d7405c54312d4387626227f83c19af0fab8d63cb49b2a19a6f77da94c28"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.215.3/lightdash-cli-2.215.3-macos-x64.tar.gz"
      sha256 "34414ea9c306e7e33d483711971ff973bf3a3bf290518e0bf4903175ea552eb4"
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

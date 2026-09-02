class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.94.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.94.0/lightdash-cli-2.94.0-macos-arm64.tar.gz"
      sha256 "70f3317d4b83c77780415c4f17d3a305bafc8a10d321b222bde4c2873dd9f758"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.94.0/lightdash-cli-2.94.0-macos-x64.tar.gz"
      sha256 "f817da41f67b5381e6ee6adab271eafb7f611d04cd0ed2cba6085051efadada9"
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

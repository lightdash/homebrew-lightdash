class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.84.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.84.0/lightdash-cli-2.84.0-macos-arm64.tar.gz"
      sha256 "9cb371a79006750324b83f59a7df00afd13e9564782fd344878644184c3a8789"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.84.0/lightdash-cli-2.84.0-macos-x64.tar.gz"
      sha256 "65e071924cb065200a9451c00d0afd0a9312cf42f0235b369de916c5a7d7671d"
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

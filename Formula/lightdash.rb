class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.96.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.96.0/lightdash-cli-2.96.0-macos-arm64.tar.gz"
      sha256 "dffc4648cb8b7f93c479843a9b32d8914c4c849d00fc4e152952ac6e57a0f735"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.96.0/lightdash-cli-2.96.0-macos-x64.tar.gz"
      sha256 "0709153a377ba4d627c57ee24884d2170ffb7cdfed2c1a640a3a0d1d619bdbee"
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

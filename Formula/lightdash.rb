class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2676.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2676.0/lightdash-cli-0.2676.0-macos-arm64.tar.gz"
      sha256 "23f7451f065b7bc5344014fb6f3ae8d6d2031466bf438c10b755b00560e19214"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2676.0/lightdash-cli-0.2676.0-macos-x64.tar.gz"
      sha256 "a0ef3f33b569264fdd063c334d59c2548b020719ee24215880b168726b9883d2"
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

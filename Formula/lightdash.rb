class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.218.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.218.0/lightdash-cli-2.218.0-macos-arm64.tar.gz"
      sha256 "3318b071b6b60f1714a33572bb6693b90c31e1216040814890d3c498971db99c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.218.0/lightdash-cli-2.218.0-macos-x64.tar.gz"
      sha256 "a100abefb67c07d1b4b52ab55f530bc412f124ab73d2dd467fe13640456d9b28"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.248.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.248.0/lightdash-cli-2.248.0-macos-arm64.tar.gz"
      sha256 "b4601c19426e20193897c871771f6adf1224a4969a35efa9bd030c9732c10bf7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.248.0/lightdash-cli-2.248.0-macos-x64.tar.gz"
      sha256 "e6d33adf8d69675f56b1ea9c644182802c7964a002b8384bff673f6a10fda952"
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

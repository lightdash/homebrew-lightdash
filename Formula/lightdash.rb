class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.229.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.229.0/lightdash-cli-2.229.0-macos-arm64.tar.gz"
      sha256 "8f760cbb4e665c62ff7a967f5b674ddee8d38db394d2044bd34424d4e21a738c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.229.0/lightdash-cli-2.229.0-macos-x64.tar.gz"
      sha256 "41928be463d4e24c07d64b2bab44d0faf93d9921f83ebaa397015b77198581e1"
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

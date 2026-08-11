class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.116.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.116.0/lightdash-cli-1.116.0-macos-arm64.tar.gz"
      sha256 "db650d487f92149c84668533669900a07d50a280c8e27793b385044a62e30824"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.116.0/lightdash-cli-1.116.0-macos-x64.tar.gz"
      sha256 "9d545b45c8622cb1805aadae95feb66c0496c85a2ce39a0f4ac767225f46e38b"
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

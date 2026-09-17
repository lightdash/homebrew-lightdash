class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.253.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.253.2/lightdash-cli-2.253.2-macos-arm64.tar.gz"
      sha256 "5d9377f1dc7643d0950ad961dbf6498bd29b21a614be2c9c383109c86a42134e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.253.2/lightdash-cli-2.253.2-macos-x64.tar.gz"
      sha256 "3d6fb5fbc3453c87332f394b813847af38aa0f452e76705525751b8900c3c3f4"
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

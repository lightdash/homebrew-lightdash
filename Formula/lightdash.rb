class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.9.0/lightdash-cli-2.9.0-macos-arm64.tar.gz"
      sha256 "f238a87a3c9cc65ed1fed7b4dde74f7722b0cd6321e0f513006458647ad0bc2d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.9.0/lightdash-cli-2.9.0-macos-x64.tar.gz"
      sha256 "b9d7ea73576556a376244d5a77b483002df4fe2625076f9237ad625a54af926f"
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

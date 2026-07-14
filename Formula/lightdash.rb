class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3377.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3377.1/lightdash-cli-0.3377.1-macos-arm64.tar.gz"
      sha256 "e03e4d7218b9c1e7c53bba26de3d0dd1ec8531122c3bb31b4e1f1aec62446cf4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3377.1/lightdash-cli-0.3377.1-macos-x64.tar.gz"
      sha256 "807f7d4d6ccc52d61662459a171ca53b8f6a96aac13dc3254216d72173321e10"
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

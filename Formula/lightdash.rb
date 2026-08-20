class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.211.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.211.0/lightdash-cli-1.211.0-macos-arm64.tar.gz"
      sha256 "8811605a38c2b8e65e844dc2bb6af8a8faf582159814db6e93745a21398021bf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.211.0/lightdash-cli-1.211.0-macos-x64.tar.gz"
      sha256 "e8c6535419175d6e7ce40ae8e8ec17c8797a8cb21991ed6df01f699f09669ded"
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

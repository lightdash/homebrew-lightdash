class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.120.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.120.0/lightdash-cli-2.120.0-macos-arm64.tar.gz"
      sha256 "f1070549d0974e1c2ec22a79d41a6459f1d0ca4de99a049bb6161ac5588ee622"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.120.0/lightdash-cli-2.120.0-macos-x64.tar.gz"
      sha256 "dedfc581aab8a562463870413a7ab13f22aaca4d9c58c42e2333e15ad4fc843a"
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

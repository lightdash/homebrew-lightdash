class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.10.1/lightdash-cli-2.10.1-macos-arm64.tar.gz"
      sha256 "55c440311ecbd64ab2a4036db6acc3aa406ed9ee8de0b574bb709c043c877004"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.10.1/lightdash-cli-2.10.1-macos-x64.tar.gz"
      sha256 "62bb8ec22b00f0da8826383f33cd297e9147c704200d244f0a5cd2a8ee4f6221"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.62.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.62.0/lightdash-cli-2.62.0-macos-arm64.tar.gz"
      sha256 "ac1f4c8fc2f21d4615601c10900d67da17bc0cf81763bb548d90ccf2e6fdf22d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.62.0/lightdash-cli-2.62.0-macos-x64.tar.gz"
      sha256 "277cdf4197cd1d57f5ab18435a001a8b38872546bb964bbeabd32da8d741f638"
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

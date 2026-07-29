class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.19.0/lightdash-cli-1.19.0-macos-arm64.tar.gz"
      sha256 "d1af1d3aad75a221d478012173c3786d25806e3c256754ee8bc0932a0ff0409b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.19.0/lightdash-cli-1.19.0-macos-x64.tar.gz"
      sha256 "39cf9cb9738d2855b8d7f3c00721dcf2499b3ea02694190e46945a7ec9448fad"
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

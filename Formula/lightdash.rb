class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2674.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2674.0/lightdash-cli-0.2674.0-macos-arm64.tar.gz"
      sha256 "f125100c5179c440b36f8a0ed7ade86b3f109ce1a52638d68aff56a365a257cc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2674.0/lightdash-cli-0.2674.0-macos-x64.tar.gz"
      sha256 "9ced708467e0fc4e018f759b8d8b1e04a515bdaa6a4c05b08eb010721b7491d0"
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

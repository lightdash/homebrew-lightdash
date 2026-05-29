class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3049.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3049.2/lightdash-cli-0.3049.2-macos-arm64.tar.gz"
      sha256 "8fe1dd44d30bb257716d712305d6b374f282ca9e36121c64dbff4927025e969f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3049.2/lightdash-cli-0.3049.2-macos-x64.tar.gz"
      sha256 "179b4a13a8bd5ae704ad48d4b63de0c3b0b2d8136054e3463acf2a9010adf7bc"
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

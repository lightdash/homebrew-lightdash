class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2355.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2355.0/lightdash-cli-0.2355.0-macos-arm64.tar.gz"
      sha256 "0305317d0a01ecbf5bcd59a3de64f9898ba5ec8c0c2cc238ca9636701fa75057"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2355.0/lightdash-cli-0.2355.0-macos-x64.tar.gz"
      sha256 "050217ba3681fd0ea1819ed62226c273b8a2eb225356cf231a10818fa7a55ffe"
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

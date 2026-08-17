class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.171.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.171.1/lightdash-cli-1.171.1-macos-arm64.tar.gz"
      sha256 "c29a19d17436f4e79fc6f92ee696dcd0ab1b9404011f3791526394eda03c726f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.171.1/lightdash-cli-1.171.1-macos-x64.tar.gz"
      sha256 "1657d9d2fe895f126d9e5b4b439a5e10f52c3e140ac9132fc9f8e2cd50b51dfb"
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

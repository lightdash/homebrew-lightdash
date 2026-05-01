class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2860.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2860.0/lightdash-cli-0.2860.0-macos-arm64.tar.gz"
      sha256 "6645b459f5f6d61796bf2561cbc5a2b97ca40207d326a437278113a07846c684"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2860.0/lightdash-cli-0.2860.0-macos-x64.tar.gz"
      sha256 "bee575d554f225b17dc2c980602fd94e191687cecc56e276440798d51626b710"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.68.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.68.0/lightdash-cli-1.68.0-macos-arm64.tar.gz"
      sha256 "04e5f9f3b290c7568202b199ecf7e3eb72c310065530200a7ec3bf5739e829c3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.68.0/lightdash-cli-1.68.0-macos-x64.tar.gz"
      sha256 "f9905b85c808cec765f1c92738cb1fb9b7c0176d4a9e1517217a8e45ca6253f6"
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

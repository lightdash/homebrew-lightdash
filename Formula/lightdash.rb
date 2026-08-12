class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.139.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.139.0/lightdash-cli-1.139.0-macos-arm64.tar.gz"
      sha256 "29d658c0e7e247d8051d8f94ac07f625f01de9d6de13385c58bb3dc7f9d4e9e9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.139.0/lightdash-cli-1.139.0-macos-x64.tar.gz"
      sha256 "e2b45a8a30129100250375f3d86038ab096de1522b238a4c9f3492674663625a"
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

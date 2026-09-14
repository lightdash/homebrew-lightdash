class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.209.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.209.1/lightdash-cli-2.209.1-macos-arm64.tar.gz"
      sha256 "dc6e43914c46229fb39f94c6f2915f11fbe73eec704765f9d1965e04833856b6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.209.1/lightdash-cli-2.209.1-macos-x64.tar.gz"
      sha256 "b98638a2d34f2976feb044b5edc3d1af22f3949201b87f9b9a099af5961c8690"
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

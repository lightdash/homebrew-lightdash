class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.222.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.222.0/lightdash-cli-1.222.0-macos-arm64.tar.gz"
      sha256 "63cce8922c0edf8ca4ed84390aed0d2978903bf19b24b0b25b4d7c3cfbf2c20d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.222.0/lightdash-cli-1.222.0-macos-x64.tar.gz"
      sha256 "6fd5f271779df8ae67db7e4a54250c9e783b47dced6d96ca786e72e7fc3d15f9"
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

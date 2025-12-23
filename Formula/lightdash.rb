class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2271.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2271.5/lightdash-cli-0.2271.5-macos-arm64.tar.gz"
      sha256 "3b5cab9b45a0b2e7a21aa719bb80d15b6e5c5e237818061072e74c35b0a717e6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2271.5/lightdash-cli-0.2271.5-macos-x64.tar.gz"
      sha256 "2c5e17e4d2cb8a3704b827ce543dcbfe0f9323aa59a5ad2ea54f7fddc1725a25"
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

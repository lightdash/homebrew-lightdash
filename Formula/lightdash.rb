class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3451.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3451.0/lightdash-cli-0.3451.0-macos-arm64.tar.gz"
      sha256 "6e9db53cdc2976b33092e75b02241514ca15b4da096459296384e89651a47ec1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3451.0/lightdash-cli-0.3451.0-macos-x64.tar.gz"
      sha256 "b742cbaee37f95de5eac07da66590ef0c718713e0e0496e6e689a989d9d522bf"
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

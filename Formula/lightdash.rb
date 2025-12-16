class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2255.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2255.0/lightdash-cli-0.2255.0-macos-arm64.tar.gz"
      sha256 "cfdf3dd99d57369f91639011335f27b3ef9db4a9d0f76363ae2a70c5d3b4f65d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2255.0/lightdash-cli-0.2255.0-macos-x64.tar.gz"
      sha256 "c2c7fc6151b403c4b217cfdae8079081526064f7394d3bdc6049f5885ac2ec1a"
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

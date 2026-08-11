class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.118.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.118.0/lightdash-cli-1.118.0-macos-arm64.tar.gz"
      sha256 "3aa5042a0f7ade008b1357dbb92672882422f7edd43e9e4707824323ba96ae38"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.118.0/lightdash-cli-1.118.0-macos-x64.tar.gz"
      sha256 "222a474e7a21d74e136ce721e818959ac8e5d5998f5410fef46803f1721a3903"
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

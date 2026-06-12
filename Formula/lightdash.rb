class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3152.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3152.0/lightdash-cli-0.3152.0-macos-arm64.tar.gz"
      sha256 "8c6633d1fd49eeef62666e3ae5a6fd7c3c86f4b466e4f565aa18395d1a3f743a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3152.0/lightdash-cli-0.3152.0-macos-x64.tar.gz"
      sha256 "624f9a8f7202e089842d09830d41946b147882e145c16b8bd1aa5f27ec00d985"
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

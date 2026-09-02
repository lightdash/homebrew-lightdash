class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.87.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.87.0/lightdash-cli-2.87.0-macos-arm64.tar.gz"
      sha256 "9fe0475e5b2dd5954d3d72bf3c51c4d5e0efeed00f1ddaf219be1a2b1751dcce"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.87.0/lightdash-cli-2.87.0-macos-x64.tar.gz"
      sha256 "dc04db8f16141eb4a707eea26f1f9a624efe21351bdefb6de6831ee968900697"
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

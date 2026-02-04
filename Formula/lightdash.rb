class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2422.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2422.1/lightdash-cli-0.2422.1-macos-arm64.tar.gz"
      sha256 "525249928fda1141a42666a29cd159edeeded4c5b89ea3863f429b46ed6bd87a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2422.1/lightdash-cli-0.2422.1-macos-x64.tar.gz"
      sha256 "0dc93c84c21d6b991e792f2ccd40b204510cb8da0bda31e6390f66965703ca83"
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

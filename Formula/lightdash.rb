class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2940.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2940.1/lightdash-cli-0.2940.1-macos-arm64.tar.gz"
      sha256 "f010cb8f17181891d8223dad6d9d49fe15441f92a6f0f215c1136a0dec177aaa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2940.1/lightdash-cli-0.2940.1-macos-x64.tar.gz"
      sha256 "221ff5b3717646aead33a353ed84b945cc8abe0b20dd3a1883b61de3c5901470"
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

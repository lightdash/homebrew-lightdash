class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2332.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2332.0/lightdash-cli-0.2332.0-macos-arm64.tar.gz"
      sha256 "96790732114053f9fa5715f75ae00c9139c4fed1df33d93f68a3b879369af51b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2332.0/lightdash-cli-0.2332.0-macos-x64.tar.gz"
      sha256 "b3ded4a780748418beee4515d80381bf61ff683a212985ae19466719603b367b"
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

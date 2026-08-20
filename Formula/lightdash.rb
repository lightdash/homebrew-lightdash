class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.228.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.228.2/lightdash-cli-1.228.2-macos-arm64.tar.gz"
      sha256 "269fcb240e065e545125c941d057789b4690cba9a326bd205a118a0c547de1af"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.228.2/lightdash-cli-1.228.2-macos-x64.tar.gz"
      sha256 "1eb652b3cb3e3f40c06de4dd194052ff0b577c7650d9cb2766e26f0fd7383ccf"
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

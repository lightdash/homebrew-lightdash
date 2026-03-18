class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2634.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2634.2/lightdash-cli-0.2634.2-macos-arm64.tar.gz"
      sha256 "8188e29aea7b6d80ca65bda0a53e8b1b64e25cdcb08b9758fc2c5bde18d3685d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2634.2/lightdash-cli-0.2634.2-macos-x64.tar.gz"
      sha256 "33b08184ace3797e207bdab425251f891afd2de3cee95771d38297ea4f1efe82"
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

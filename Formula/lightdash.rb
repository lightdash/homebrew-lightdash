class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2437.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2437.0/lightdash-cli-0.2437.0-macos-arm64.tar.gz"
      sha256 "458060f32a7bc1e2a3fcd21f284e782689f6fd3c078acd0b941f3ef7a6b9c64b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2437.0/lightdash-cli-0.2437.0-macos-x64.tar.gz"
      sha256 "f246cd592e6607d9c9b0ec90733b26ab0986fadf0b4e9ff48449ab39213bdbe5"
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

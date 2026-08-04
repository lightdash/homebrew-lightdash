class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.76.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.76.0/lightdash-cli-1.76.0-macos-arm64.tar.gz"
      sha256 "36c782e46599bdd54a77f09485599d0b783f1463b6a0949326b95d87baebb183"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.76.0/lightdash-cli-1.76.0-macos-x64.tar.gz"
      sha256 "4faf2e4724d4b3171cf9811106eceba5cf2866704fd52a017ef6428da21991d8"
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

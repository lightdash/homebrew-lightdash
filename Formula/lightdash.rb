class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2178.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2178.4/lightdash-cli-0.2178.4-macos-arm64.tar.gz"
      sha256 "2517e7448985208098bce558bf9207bd69764edc1a514a54e64cc8011b99bff9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2178.4/lightdash-cli-0.2178.4-macos-x64.tar.gz"
      sha256 "801ccd1492395e911082b84951c5eaddf027cb3ad40871bb820f5147d5b83ece"
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

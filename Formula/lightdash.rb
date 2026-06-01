class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3061.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3061.0/lightdash-cli-0.3061.0-macos-arm64.tar.gz"
      sha256 "14c8d114bfe7f43885382b2cc063651a57f5145cc6f524192ea85d204b612cc6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3061.0/lightdash-cli-0.3061.0-macos-x64.tar.gz"
      sha256 "65b7963d67ed070fd735a1a1486229cdecd71c0dc557e420510ef6f4938ea815"
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

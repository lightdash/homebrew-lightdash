class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.93.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.93.2/lightdash-cli-1.93.2-macos-arm64.tar.gz"
      sha256 "31fbfe071153e93be72d6818ad0877c7a341b95d32dd26ad2e79f6f038b8244c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.93.2/lightdash-cli-1.93.2-macos-x64.tar.gz"
      sha256 "2b8cf11cc1ba13e417d36d64150521d38b017aa3a76fdc7c0395247a5189357c"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.253.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.253.1/lightdash-cli-1.253.1-macos-arm64.tar.gz"
      sha256 "fdd0667aba3abffb3531b399ce43de431536439f83a3f8339d86f7541de8cd46"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.253.1/lightdash-cli-1.253.1-macos-x64.tar.gz"
      sha256 "fdbee8b691c0141842199fb4c0dfa2e2187e735cb40c938478833494a243701a"
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

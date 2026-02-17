class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2476.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2476.0/lightdash-cli-0.2476.0-macos-arm64.tar.gz"
      sha256 "e63950160bac8366ec8e4863ee42d6bb29194770af96d938205f77c1796aaefd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2476.0/lightdash-cli-0.2476.0-macos-x64.tar.gz"
      sha256 "84aa154530fb24a20e639446d209a3f3bc3196ea072dabd59183cfb45c40d624"
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

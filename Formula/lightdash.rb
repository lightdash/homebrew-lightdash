class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2270.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2270.7/lightdash-cli-0.2270.7-macos-arm64.tar.gz"
      sha256 "d0ca5e9aa654d07daef7d4ba7b531891878eceb80fa1f3603aba4d30803416a9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2270.7/lightdash-cli-0.2270.7-macos-x64.tar.gz"
      sha256 "f5243276fe428244499d47b81359ca4f5c5993aa873dc27a0dc7bf9e56a1d817"
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

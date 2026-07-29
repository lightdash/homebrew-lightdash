class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.35.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.35.0/lightdash-cli-1.35.0-macos-arm64.tar.gz"
      sha256 "9cf50813e989c8c2fbdb9afb3a783c120b20f8230a916b115dfec9f00edffbe3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.35.0/lightdash-cli-1.35.0-macos-x64.tar.gz"
      sha256 "3b3cf564b8a5dd5a8a6f43f662aa67b2efbceb5d4f67b5d85f2ea369c039a3e8"
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

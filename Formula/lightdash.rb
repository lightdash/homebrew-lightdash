class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2205.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2205.0/lightdash-cli-0.2205.0-macos-arm64.tar.gz"
      sha256 "a7f2f4ceff66dc75420fdc361120a7b816b9da546c16f4dade2091658e88b3b4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2205.0/lightdash-cli-0.2205.0-macos-x64.tar.gz"
      sha256 "9822393b6368f12e7037d7859815514d565ccbab66c38b3a526cb93c52c6b5a5"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.246.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.246.0/lightdash-cli-2.246.0-macos-arm64.tar.gz"
      sha256 "aba1c6d96293361de8072633e47f1af3fd6f76c00231df38d22a434460284f9a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.246.0/lightdash-cli-2.246.0-macos-x64.tar.gz"
      sha256 "96fbdfe0411f97f4431fb4296c2233562399fa19d4483d86494384b8384a9465"
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

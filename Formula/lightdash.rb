class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2823.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2823.0/lightdash-cli-0.2823.0-macos-arm64.tar.gz"
      sha256 "b3cb41dd404d807b4d4a784cfbadd16f67766ce2dcde8475334381d6b7724f68"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2823.0/lightdash-cli-0.2823.0-macos-x64.tar.gz"
      sha256 "14d032b05cc577e5af12002a3d45661a269c94df036c81782391c008d2782148"
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

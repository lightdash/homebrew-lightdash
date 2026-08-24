class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.251.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.251.3/lightdash-cli-1.251.3-macos-arm64.tar.gz"
      sha256 "68104c1176a558e689d4ac042ae45f6b4372bb898b2363e63d242214fb89df04"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.251.3/lightdash-cli-1.251.3-macos-x64.tar.gz"
      sha256 "028524f1d505df95934ab70a4f2f585c469a8a09b0027f7cbf9c67f7d2801688"
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

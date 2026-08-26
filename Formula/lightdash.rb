class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.7.0/lightdash-cli-2.7.0-macos-arm64.tar.gz"
      sha256 "602e6b3a2f1cd78b1d4dad2eb576def6d86ef0d813616b55a0ba0adaa957c1d2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.7.0/lightdash-cli-2.7.0-macos-x64.tar.gz"
      sha256 "6b6a54a9dc22b8183126dc50ea52ac74a1dc8c90633f2b35084f708bda187dec"
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

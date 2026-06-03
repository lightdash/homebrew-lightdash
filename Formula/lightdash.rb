class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3081.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3081.1/lightdash-cli-0.3081.1-macos-arm64.tar.gz"
      sha256 "25d2c6286f6353fa55349f338659a29630a4bb5ae7d48e4404e6e5d434f7ae60"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3081.1/lightdash-cli-0.3081.1-macos-x64.tar.gz"
      sha256 "1d39c2674e13c34e4c0e24bf08e0e484ff7638b484802b9470d4577e0a836f87"
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

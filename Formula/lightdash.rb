class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.66.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.66.0/lightdash-cli-2.66.0-macos-arm64.tar.gz"
      sha256 "1ff98e510c5a7457606a194ec1113b6e14d3d1d7f84fb2f621b47f50bd689dfe"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.66.0/lightdash-cli-2.66.0-macos-x64.tar.gz"
      sha256 "a765a7b92c6e705a5a7e577c4db115a4fc63ec5752b19377ffeb0c3e38cec8b5"
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

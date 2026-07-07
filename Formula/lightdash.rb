class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3325.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3325.0/lightdash-cli-0.3325.0-macos-arm64.tar.gz"
      sha256 "9fcc342a3ad2cfdc20670f5cf2643fecaf89f08bdddaca44fb8c9f0c79e24c95"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3325.0/lightdash-cli-0.3325.0-macos-x64.tar.gz"
      sha256 "12e918fd3aedda6a62291381ced7f25de681f5b0d45e13900438c26ce9627200"
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

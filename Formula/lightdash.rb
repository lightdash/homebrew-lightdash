class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2242.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2242.0/lightdash-cli-0.2242.0-macos-arm64.tar.gz"
      sha256 "18dc1b570144356c3376fb0d4c5f2abbc49c2b9e597a64c53b02e6fd28abe32b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2242.0/lightdash-cli-0.2242.0-macos-x64.tar.gz"
      sha256 "5f90855111102c23b3d91cb2aed26437b4955ff5a0916d122ecfd3d668001eeb"
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

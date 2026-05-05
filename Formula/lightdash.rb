class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2870.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2870.1/lightdash-cli-0.2870.1-macos-arm64.tar.gz"
      sha256 "7c83641d471b6d988e89db0881fc2669d13486089401290087a6568e8cdd9682"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2870.1/lightdash-cli-0.2870.1-macos-x64.tar.gz"
      sha256 "40ac48cfdccdcc355c0afb30e5b773d83494ae28997798ad7bbef18d502a229f"
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

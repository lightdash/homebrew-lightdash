class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2201.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2201.0/lightdash-cli-0.2201.0-macos-arm64.tar.gz"
      sha256 "a4384ec5dc6265e407c55743997665f6d9bf39eac2559594939180921f3a146a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2201.0/lightdash-cli-0.2201.0-macos-x64.tar.gz"
      sha256 "e74ce04736fe00a4329968fab439fca83ca3f4fbbb7b101fc89a9b60ff4b8d7f"
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

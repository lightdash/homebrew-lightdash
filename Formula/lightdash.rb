class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3266.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3266.0/lightdash-cli-0.3266.0-macos-arm64.tar.gz"
      sha256 "74908a98af67457507cc19fc9b0f7dddb534a66d93b0bce10af8198a97f0dce0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3266.0/lightdash-cli-0.3266.0-macos-x64.tar.gz"
      sha256 "cb4a3cc765f59ad3b0991c3addd9b498847db79f92170d191e9104bfc4219afb"
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

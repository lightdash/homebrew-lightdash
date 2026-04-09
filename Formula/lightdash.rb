class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2744.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2744.0/lightdash-cli-0.2744.0-macos-arm64.tar.gz"
      sha256 "7a47f03a654ae71e452ed873bbbacd5c747a029b55be6f9cdd0252fe93b710cc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2744.0/lightdash-cli-0.2744.0-macos-x64.tar.gz"
      sha256 "3a2819b088f1e00a0dfdc2183c8468564c31ff48319edf20adf1bc069faf3a4a"
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

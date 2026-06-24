class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3233.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3233.0/lightdash-cli-0.3233.0-macos-arm64.tar.gz"
      sha256 "4e55a4f509e06a70d9d7272439dad8c16b7060655cbb25b5100ee53c3d6de95f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3233.0/lightdash-cli-0.3233.0-macos-x64.tar.gz"
      sha256 "2aa7d554c36e1276ba8a41ac37195b1d76d01b4cad1bb2ccb82fe39256465dba"
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

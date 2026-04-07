class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2729.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2729.1/lightdash-cli-0.2729.1-macos-arm64.tar.gz"
      sha256 "739ff2299096b9524d70f87692c66ace6a71ab8c1e8bdf1aa3ec118d14cc00ef"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2729.1/lightdash-cli-0.2729.1-macos-x64.tar.gz"
      sha256 "9d498e2bd4728f1c6ca2c8d94cc53332960b300d788ac569908cd1cdbe39d86b"
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

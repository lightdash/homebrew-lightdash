class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2425.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2425.0/lightdash-cli-0.2425.0-macos-arm64.tar.gz"
      sha256 "31cddf4e5ab79fd18f2460d25f1760dabed2a26c16aed312d9155b492245bb10"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2425.0/lightdash-cli-0.2425.0-macos-x64.tar.gz"
      sha256 "07add8a1a7bd5424d05040ef2f0ce7b54b6ad93012e2ca7ab4435a2c98a201fb"
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

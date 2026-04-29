class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2847.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2847.0/lightdash-cli-0.2847.0-macos-arm64.tar.gz"
      sha256 "5a8e9efef81ba88cf02a65babc10f8e90e7c1e8f9a4655b471537f4066b4bd12"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2847.0/lightdash-cli-0.2847.0-macos-x64.tar.gz"
      sha256 "6df53580d6125967d03167abc25bed5d9887ecbb39e71289260fee7e02f6d8d4"
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

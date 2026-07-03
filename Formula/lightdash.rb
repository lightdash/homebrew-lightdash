class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3308.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3308.0/lightdash-cli-0.3308.0-macos-arm64.tar.gz"
      sha256 "adf2a1403bf4f5c515c3a941730bb1e49c3b9efc072ed23f015b8b87001cd7af"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3308.0/lightdash-cli-0.3308.0-macos-x64.tar.gz"
      sha256 "9ff414e0ac15b74e25a0ad1c80f9942ccd31d05f255c57047fcd3e66a71aa99b"
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

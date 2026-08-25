class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.258.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.258.0/lightdash-cli-1.258.0-macos-arm64.tar.gz"
      sha256 "9eed7c99dd6e215e7acc2cc6aab05f4974b8e9af352016b124fbab8a6c38c9e6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.258.0/lightdash-cli-1.258.0-macos-x64.tar.gz"
      sha256 "1804b06bfc3836d9c775d643912fb5fc7525e0df07a9f42804708387536816e9"
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

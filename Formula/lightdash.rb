class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.31.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.31.0/lightdash-cli-1.31.0-macos-arm64.tar.gz"
      sha256 "7b48a56651acd7c8e2a3f046bf0d21eabb1a320214d314a4e0439ec845c50e00"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.31.0/lightdash-cli-1.31.0-macos-x64.tar.gz"
      sha256 "c26ec152af69b9cbc6365823b638d888a53d0a02d56914af19b758d10e99dbc8"
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

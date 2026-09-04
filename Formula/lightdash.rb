class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.124.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.124.0/lightdash-cli-2.124.0-macos-arm64.tar.gz"
      sha256 "f0340068db056fc2232f7bc789b9f82afa85c92ff8e45e0abac8997e22281a71"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.124.0/lightdash-cli-2.124.0-macos-x64.tar.gz"
      sha256 "99486e9ee4f32796625da9a1b8c4dc1c45cd887e0eddee8b81b2467b0d2fd444"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3430.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3430.1/lightdash-cli-0.3430.1-macos-arm64.tar.gz"
      sha256 "55ecc43e44d82ad8b61d2117f144442ad0f05228cf1d8c6f9f9b408e454cd371"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3430.1/lightdash-cli-0.3430.1-macos-x64.tar.gz"
      sha256 "0e0bee55fb32ef6e4a1ccedf10c3c3d443721d6c4b6f6e9c3cd96d9bef914b9e"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2755.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2755.0/lightdash-cli-0.2755.0-macos-arm64.tar.gz"
      sha256 "8f3edd96c520b4fac34e8e0c16d02aafda01ebcda4a99c6304e734e2b19f5b63"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2755.0/lightdash-cli-0.2755.0-macos-x64.tar.gz"
      sha256 "8875979a7863e2582febcc56f34a89c2663098b2c0850ebf325d35a40dd44dfc"
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

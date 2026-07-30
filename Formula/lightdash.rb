class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.39.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.39.1/lightdash-cli-1.39.1-macos-arm64.tar.gz"
      sha256 "2ec0350dd817a45c7efacc45d93bfcba3eb2026fc20fba074c38af1cc9207c06"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.39.1/lightdash-cli-1.39.1-macos-x64.tar.gz"
      sha256 "f5e99a9a6a4ebcd5ccef9224902765df25796353b55472fd8b5f22a1a28f6ecd"
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

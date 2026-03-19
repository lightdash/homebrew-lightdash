class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2641.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2641.0/lightdash-cli-0.2641.0-macos-arm64.tar.gz"
      sha256 "8436aa9f5c10479bc9c4b63608c6f1894b178b8654eaaec832433fd352eccfab"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2641.0/lightdash-cli-0.2641.0-macos-x64.tar.gz"
      sha256 "6f503be9ea0e2fe1600e400240f765b595eed2c24ad4152b70c27819eb6a63e9"
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

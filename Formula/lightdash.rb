class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2353.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2353.0/lightdash-cli-0.2353.0-macos-arm64.tar.gz"
      sha256 "3d79bb7078ea32d63b0c5a4aa23d4113bcc8bb4fb389ed8f5eb61fd5acdbfa8d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2353.0/lightdash-cli-0.2353.0-macos-x64.tar.gz"
      sha256 "83d7b8c5f5d1935abbfdbc3cf5e2bf9981fe6171a75cc9549beb585d932df360"
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

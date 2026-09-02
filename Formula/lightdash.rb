class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.90.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.90.0/lightdash-cli-2.90.0-macos-arm64.tar.gz"
      sha256 "6de7ed8b4ee47eaff7aba2677903c6fdf67c08cf30ec206a8419e7191a1b7b9a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.90.0/lightdash-cli-2.90.0-macos-x64.tar.gz"
      sha256 "1ce8f4e5f96a8c54c158e2096ef49a676817ea9f711ad0eecabb3814ee4bdde8"
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

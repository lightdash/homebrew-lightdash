class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.15.0/lightdash-cli-1.15.0-macos-arm64.tar.gz"
      sha256 "ed3e1e69a9c86b20cfc8b171dd55fa5e8cd3151f010549bbe457176655b02c93"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.15.0/lightdash-cli-1.15.0-macos-x64.tar.gz"
      sha256 "3da288d7b36d7f8c78ae217ef80760b43b2afe18538501235edda285adb5da95"
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

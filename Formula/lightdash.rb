class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3472.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3472.0/lightdash-cli-0.3472.0-macos-arm64.tar.gz"
      sha256 "2c7f2ac596b39f516b868455e498a1cb60183823a6854deac808d9f641da3b45"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3472.0/lightdash-cli-0.3472.0-macos-x64.tar.gz"
      sha256 "30bb7e8bb9d5d33e494e8d591f04a7b6eb20af2b0e812483ac06954a53ae5ed3"
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

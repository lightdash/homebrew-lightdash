class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2412.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2412.0/lightdash-cli-0.2412.0-macos-arm64.tar.gz"
      sha256 "1f8d2eae9cb51ec12ae7e6fd492c3aea9bb198ef4883aa76d2dcd4cd592cb106"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2412.0/lightdash-cli-0.2412.0-macos-x64.tar.gz"
      sha256 "2487fd506eae8b7915bc7718309bad9035a8a9d6e4ff19f3644582e5ea2180d5"
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

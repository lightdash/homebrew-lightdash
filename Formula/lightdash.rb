class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2301.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2301.3/lightdash-cli-0.2301.3-macos-arm64.tar.gz"
      sha256 "e7e778092a8e0139502f8394f9baaa0607162eda5ddeeb9dfa122534e1c2aea8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2301.3/lightdash-cli-0.2301.3-macos-x64.tar.gz"
      sha256 "6e94eb96a3682ff1f6c730b873e540d0101ba28edab00ec688a71b15af564834"
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

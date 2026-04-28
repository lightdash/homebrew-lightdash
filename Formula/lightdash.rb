class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2825.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2825.0/lightdash-cli-0.2825.0-macos-arm64.tar.gz"
      sha256 "739c1fdf9376c62ec276d690674e0952607b933340b3b45cec9e18cb5b04ee1a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2825.0/lightdash-cli-0.2825.0-macos-x64.tar.gz"
      sha256 "84debf04b57efa5a2887c9f08304421a0c6011686e1b54112bd40d19b2b1f331"
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

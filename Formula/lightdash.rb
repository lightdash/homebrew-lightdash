class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2331.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2331.2/lightdash-cli-0.2331.2-macos-arm64.tar.gz"
      sha256 "25b7d4f0590ec7aef8e9a31deeba309e315915f86d0d6f7b9727ae69cee746e6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2331.2/lightdash-cli-0.2331.2-macos-x64.tar.gz"
      sha256 "1790d1895d48c647ca6a7f6c3577f7d495b19a139bb74bf7c30463dd0df6d92f"
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

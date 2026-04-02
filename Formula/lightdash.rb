class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2717.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2717.1/lightdash-cli-0.2717.1-macos-arm64.tar.gz"
      sha256 "01b22cc8a17fc65af4c8b56a156d17d437e06d2c91cb4135ed9368b0d3c83479"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2717.1/lightdash-cli-0.2717.1-macos-x64.tar.gz"
      sha256 "67949225305b348e1a110e9aeb0cfd6ceed88d63705cc863c39ed29daf2d3b0d"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3146.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3146.1/lightdash-cli-0.3146.1-macos-arm64.tar.gz"
      sha256 "c66e10c1dcff899c4cbdb499d5d862b5678dea6f9fcb72758fcc2a60c50a6158"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3146.1/lightdash-cli-0.3146.1-macos-x64.tar.gz"
      sha256 "3a4ba3948791f57f951992a15afa40a54d31982845d84603f27077300abcb4eb"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3395.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3395.0/lightdash-cli-0.3395.0-macos-arm64.tar.gz"
      sha256 "1deba98a9bbaa6452a17d0eb653beac2eaa4f73d3533b4e4558425653e572c58"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3395.0/lightdash-cli-0.3395.0-macos-x64.tar.gz"
      sha256 "5bba2aec713b6c2232042d2ec44f10eef8f8b31774e243fafa0386a1d2a10eff"
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

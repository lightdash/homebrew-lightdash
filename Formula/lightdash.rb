class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2242.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2242.1/lightdash-cli-0.2242.1-macos-arm64.tar.gz"
      sha256 "6755d12ba2d435a7f261db9dc9164ee141f081c6a742fc1909dd55cf90f2d3bb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2242.1/lightdash-cli-0.2242.1-macos-x64.tar.gz"
      sha256 "c575d1b174cfaa1aa4a56d55e8b822b8c694c279fea994b59d0901c7552fbca5"
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

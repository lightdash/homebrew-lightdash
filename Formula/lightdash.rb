class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3017.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3017.1/lightdash-cli-0.3017.1-macos-arm64.tar.gz"
      sha256 "9a8a81ada804a6532443d0364b11971e0f7b74582b9c44b3a124abe6f93fa5f4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3017.1/lightdash-cli-0.3017.1-macos-x64.tar.gz"
      sha256 "96a6f1a7dc7896b585ce43496d7a10b8d2e3d96166b8a981edf8eb328d31a6f3"
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

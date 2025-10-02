class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2040.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2040.0/lightdash-cli-v0.2040.0-macos-arm64.tar.gz"
      sha256 "b052a2943d4d1fee3e0eb8046d364b2296b97d11416bff792e85cc49c6c5e5b6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2040.0/lightdash-cli-v0.2040.0-macos-x64.tar.gz"
      sha256 "23128fb55b2d23bac6c5d8c33b47d3ed876d92f4a363498604c565c6378b8425"
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

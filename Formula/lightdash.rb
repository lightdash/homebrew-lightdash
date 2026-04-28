class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2824.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2824.0/lightdash-cli-0.2824.0-macos-arm64.tar.gz"
      sha256 "da0c6ef6a9db6d8c318d6dcc9aa6347a63f600cd34064221bd200e9ab40302d9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2824.0/lightdash-cli-0.2824.0-macos-x64.tar.gz"
      sha256 "6eb152c1ec8805e47cc7e4baad10671ccc480f6d8e2923e7bf941b2be70c391b"
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

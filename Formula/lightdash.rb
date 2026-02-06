class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2436.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2436.0/lightdash-cli-0.2436.0-macos-arm64.tar.gz"
      sha256 "2d0f438de2e60cec746a8eef2800a907fe88824dd27fdb53fdc0edb89de56738"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2436.0/lightdash-cli-0.2436.0-macos-x64.tar.gz"
      sha256 "3fe6d6f0588235c49dd942e500e5ea12bff72f01df5c5fea1eacf685f2e3f700"
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

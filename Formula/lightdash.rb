class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2875.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2875.0/lightdash-cli-0.2875.0-macos-arm64.tar.gz"
      sha256 "42e7b0bf6499c57b84c07842d53e10a409958b9f65e11bdbd4da5b90895a302c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2875.0/lightdash-cli-0.2875.0-macos-x64.tar.gz"
      sha256 "5523e6116298ac7916fe123ed2aaea186781bb5eb5c2e3d8a460067971a9b766"
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

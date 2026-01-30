class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2404.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2404.0/lightdash-cli-0.2404.0-macos-arm64.tar.gz"
      sha256 "89a41ba9055b2e038f85a4702f397a29a7935d847359a85e9d5250bb9687d85d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2404.0/lightdash-cli-0.2404.0-macos-x64.tar.gz"
      sha256 "d4443538391da92107af74806ee1e22ffe33426dad74108ebfef665099d7ab4d"
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

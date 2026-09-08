class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.166.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.166.0/lightdash-cli-2.166.0-macos-arm64.tar.gz"
      sha256 "6916dcf397542baa23f1227bbfb91221dc5b40a8acbb414c688d64b64da5b3de"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.166.0/lightdash-cli-2.166.0-macos-x64.tar.gz"
      sha256 "e8c2d9db18d4b844471d43d2f9f48f085ca650ae75db224077d41c52e8fd3ff7"
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

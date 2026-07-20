class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3423.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3423.0/lightdash-cli-0.3423.0-macos-arm64.tar.gz"
      sha256 "0cd6dfc7198ec411089d5b4b8834f3deadfce7fd0a3f45071732b41584d71f28"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3423.0/lightdash-cli-0.3423.0-macos-x64.tar.gz"
      sha256 "6e944e1ed59f5682bc77b8995277013933750b34d0ecef6d9e1066b136e15906"
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

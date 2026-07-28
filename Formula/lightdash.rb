class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.5.1/lightdash-cli-1.5.1-macos-arm64.tar.gz"
      sha256 "3ca72b9c02e8ea61f6a3ae2aa7600d03ee5e5953a8aad3852a0b9dedbd69ffb3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.5.1/lightdash-cli-1.5.1-macos-x64.tar.gz"
      sha256 "00ff458d81bff4cdb8379a6455630c87e81868c021b79d4650cea36ddf981487"
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

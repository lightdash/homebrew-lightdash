class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2497.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2497.0/lightdash-cli-0.2497.0-macos-arm64.tar.gz"
      sha256 "14fb3fe8b6adb28ff663a66a3c0b91ff14313f38ea41e08683f81648194d2568"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2497.0/lightdash-cli-0.2497.0-macos-x64.tar.gz"
      sha256 "674fa04367cda460dfd85edcc2237fcd2df40177229581d504e5ac271d4efee0"
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

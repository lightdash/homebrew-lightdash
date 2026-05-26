class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3018.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3018.0/lightdash-cli-0.3018.0-macos-arm64.tar.gz"
      sha256 "0900df8ca873faca398d4ff15396d55712f05e99991d1696f22e8163913436d5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3018.0/lightdash-cli-0.3018.0-macos-x64.tar.gz"
      sha256 "6bdb60393c7402e1afd80eb306bb4ea5e4114a558cbf2a46fae598e579f1b160"
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

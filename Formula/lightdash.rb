class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2921.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2921.0/lightdash-cli-0.2921.0-macos-arm64.tar.gz"
      sha256 "bd4e34099a3cdc04867ae29ddc51d9a237263a0ea81d64ea26c4483c3370855a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2921.0/lightdash-cli-0.2921.0-macos-x64.tar.gz"
      sha256 "a8615545e111d1cc333aeec328f4b7fb52317121bd702adca172fbfa4a6d243e"
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

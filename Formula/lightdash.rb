class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2410.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2410.0/lightdash-cli-0.2410.0-macos-arm64.tar.gz"
      sha256 "496ed59f41fdb55df13e2a283947d31907c7fb932e0682d44b955b9efbac058e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2410.0/lightdash-cli-0.2410.0-macos-x64.tar.gz"
      sha256 "21562fe79cb07edf157e039b76aaa0ffa627bb5d5d723a5749364dff7951c45d"
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

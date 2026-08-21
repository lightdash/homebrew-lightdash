class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.230.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.230.0/lightdash-cli-1.230.0-macos-arm64.tar.gz"
      sha256 "bcd6ce488e203358359646e6569a295a4e61f9ea442235632c349e34e2e96bfe"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.230.0/lightdash-cli-1.230.0-macos-x64.tar.gz"
      sha256 "467508ec2ba8128d310db4e373c035c23430a0a95f52436166d4e23770237ced"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2389.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2389.3/lightdash-cli-0.2389.3-macos-arm64.tar.gz"
      sha256 "32b1ea0039ca3009b1ac2b018fceea5b1e9836f7a59fa85f60061f909f403147"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2389.3/lightdash-cli-0.2389.3-macos-x64.tar.gz"
      sha256 "e3385905c86ada71881d5d2d71e86668855f050897556005cc02291248e404ad"
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

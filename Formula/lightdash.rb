class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2648.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2648.4/lightdash-cli-0.2648.4-macos-arm64.tar.gz"
      sha256 "fc72dd7aa8b87c1a56332bd1d7fcf87eb8098912e7da703beec3f55dee73299a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2648.4/lightdash-cli-0.2648.4-macos-x64.tar.gz"
      sha256 "7597eef2445132faec4155d298020b236397cbc7221e08f0676821c8ce353f8f"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2599.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2599.0/lightdash-cli-0.2599.0-macos-arm64.tar.gz"
      sha256 "3ca02a326c2b0414e0dc49de1d4bba3224164867b609f0e69899ab0bcc464acb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2599.0/lightdash-cli-0.2599.0-macos-x64.tar.gz"
      sha256 "dce107ad117b751fca99ece4f6a90eb2c860f08aeb834f58673b1210d2793ee4"
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

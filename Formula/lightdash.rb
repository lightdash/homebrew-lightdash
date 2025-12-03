class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2221.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2221.1/lightdash-cli-0.2221.1-macos-arm64.tar.gz"
      sha256 "99a05f293d1658bf8062a95d39e6bb49746773b1bb7f49402c7f0a6ce98c120b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2221.1/lightdash-cli-0.2221.1-macos-x64.tar.gz"
      sha256 "a5344a2a4f95dbe948c9a0a6a2e34200ec3c81e6a2653f5bc16f04f38230d69e"
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

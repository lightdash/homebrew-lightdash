class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2379.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2379.0/lightdash-cli-0.2379.0-macos-arm64.tar.gz"
      sha256 "93ec2f5f2249de949fa26949313ed641c544faba00de9d3ac934c0260d101cf8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2379.0/lightdash-cli-0.2379.0-macos-x64.tar.gz"
      sha256 "a670b5546c9c750141243b4b1692a8f92ecb7aa29e163c4d84a53aa69b89bbd4"
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

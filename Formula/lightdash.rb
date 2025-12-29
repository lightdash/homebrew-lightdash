class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2284.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2284.0/lightdash-cli-0.2284.0-macos-arm64.tar.gz"
      sha256 "7f9f81c1d802a8d307063f4410c4a0e3089bc33bdf87adef0cff7b01eb01d279"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2284.0/lightdash-cli-0.2284.0-macos-x64.tar.gz"
      sha256 "2a26cbd69b9b58d7d23162866acbb3e84a0e5d7c6c6b466597a0e25e2f1e8161"
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

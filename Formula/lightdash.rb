class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2614.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2614.0/lightdash-cli-0.2614.0-macos-arm64.tar.gz"
      sha256 "0f32dccf1f6613fe877e19a6d62328ef331ff4676d633eefb0cabb677c91bcb3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2614.0/lightdash-cli-0.2614.0-macos-x64.tar.gz"
      sha256 "a1a704106e676ac3804e7e4b0b5f508e6a846667d40d32883eba86f9d9c666f6"
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

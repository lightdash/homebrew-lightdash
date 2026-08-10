class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.108.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.108.1/lightdash-cli-1.108.1-macos-arm64.tar.gz"
      sha256 "f07fa0951983877ef5e66089060de22ec3ff4382cd3d5a94f4b653a03b291abf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.108.1/lightdash-cli-1.108.1-macos-x64.tar.gz"
      sha256 "848764fcbb5019159865f4106891da155cd40ddf0e0775fcbb7419909b419285"
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

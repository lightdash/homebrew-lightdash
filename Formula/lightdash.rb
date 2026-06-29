class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3259.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3259.1/lightdash-cli-0.3259.1-macos-arm64.tar.gz"
      sha256 "e8e98429b70d4f16d725ad5d75e885107a1aa31c2446344ff1a49f3b3e215b6e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3259.1/lightdash-cli-0.3259.1-macos-x64.tar.gz"
      sha256 "f033345d2de757c8aed18b4b5e6c421e39af79de8d5e37de5e1f949c459b6290"
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

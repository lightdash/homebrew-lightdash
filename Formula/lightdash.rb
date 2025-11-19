class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2186.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2186.1/lightdash-cli-0.2186.1-macos-arm64.tar.gz"
      sha256 "f0d6559435a05cb1308cec521b0a42b55b96bb02a15bba31e076f0beaa40fffe"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2186.1/lightdash-cli-0.2186.1-macos-x64.tar.gz"
      sha256 "36d2ca1aa3d5558b32e3558cac35daccca33a4a1a09eb8ffa9817408c8a0979e"
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

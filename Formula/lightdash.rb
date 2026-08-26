class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.6.0/lightdash-cli-2.6.0-macos-arm64.tar.gz"
      sha256 "f7d0761ba218060cc807b6e6e407d9c8080d009a143eaa10aa849ed0bfa10e66"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.6.0/lightdash-cli-2.6.0-macos-x64.tar.gz"
      sha256 "2b885e8745c2239f47058f525dae742ac3fa5cb593f2a7844a577c8ab8ef8ac7"
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

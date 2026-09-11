class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.197.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.197.0/lightdash-cli-2.197.0-macos-arm64.tar.gz"
      sha256 "fd3e42559360b24957427000d880957b22c530a3a1bd9f3a8f8222c7b7f84ae6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.197.0/lightdash-cli-2.197.0-macos-x64.tar.gz"
      sha256 "e3c46df587d18d0eaf579eafa701b0cbb144ac9f6e2274c524d6769976f5cb2b"
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

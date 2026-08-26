class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.9.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.9.3/lightdash-cli-2.9.3-macos-arm64.tar.gz"
      sha256 "739a52be6152ac18317c2814cb08492b14d155fc4a5aac3455fffdaefa701fad"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.9.3/lightdash-cli-2.9.3-macos-x64.tar.gz"
      sha256 "add1bb34e4adaed7b29a298d9f16a67db856c25c1bee02f1f22cee49542a455f"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.64.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.64.0/lightdash-cli-2.64.0-macos-arm64.tar.gz"
      sha256 "9d7855980ff91b4e4fd11068ec98a5607cb924008fc4c28e686e11b8381c509a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.64.0/lightdash-cli-2.64.0-macos-x64.tar.gz"
      sha256 "cef52d0eb816de526ff2852ac22ae0e8d98a6bb6559f45d7325d79ebc039337f"
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

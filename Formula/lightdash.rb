class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.187.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.187.0/lightdash-cli-1.187.0-macos-arm64.tar.gz"
      sha256 "ee92fee974459b6a0c763c890cdc6890a41336e9b4605670c6cad22b0afb7da5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.187.0/lightdash-cli-1.187.0-macos-x64.tar.gz"
      sha256 "d51c977c1f4e9f699e97d4f072e251ca4bf5c8ed6a2bddcf08a5b09cdcd899f9"
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

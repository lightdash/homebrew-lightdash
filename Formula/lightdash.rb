class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.254.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.254.0/lightdash-cli-1.254.0-macos-arm64.tar.gz"
      sha256 "d45041e5a143ecbb6e0e56057dfb324b50682b6536fb95f3bc8262138e606a01"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.254.0/lightdash-cli-1.254.0-macos-x64.tar.gz"
      sha256 "5b4113a8cdc3e934cd6d92b5ac99980dcc963c21e26b9a9107048c6d68a397a7"
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

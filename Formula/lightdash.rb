class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.45.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.45.0/lightdash-cli-1.45.0-macos-arm64.tar.gz"
      sha256 "9afc5176d7ac93f6767d81b5fb4e1334e71e73a05b6f81cdb6b95174aaa4272f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.45.0/lightdash-cli-1.45.0-macos-x64.tar.gz"
      sha256 "43c0d3e799fee43e9e4ee3cb918371755972ca4c7844a8f3458556661158c930"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.148.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.148.0/lightdash-cli-1.148.0-macos-arm64.tar.gz"
      sha256 "e9bc44dad17357787415ac5097c933df4ebb9ed2a4285066ab9a6b3761d4e35b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.148.0/lightdash-cli-1.148.0-macos-x64.tar.gz"
      sha256 "27ed458e1c2985514d3a6a8e366d2583ede3bae0de5b64b419c9d3edfc5ea0d0"
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

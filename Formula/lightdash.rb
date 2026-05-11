class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2908.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2908.0/lightdash-cli-0.2908.0-macos-arm64.tar.gz"
      sha256 "ccc0a2aa878dcc031b6cdaa3f3ea9ad226242e4c1bb53110ff5de005e5fced06"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2908.0/lightdash-cli-0.2908.0-macos-x64.tar.gz"
      sha256 "bb696d2e2cbc9afe379df1ddbe0b959c72a3a6a2f5ea0cb9099195c8da58b6cd"
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

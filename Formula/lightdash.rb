class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3124.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3124.0/lightdash-cli-0.3124.0-macos-arm64.tar.gz"
      sha256 "b9176d7b86e450d7c39be0da42ebe8f9f455d09c5fa209c5b87ef581e3be5e35"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3124.0/lightdash-cli-0.3124.0-macos-x64.tar.gz"
      sha256 "788d701aaf18f91e669d97810b4e4f9c0c4345cc174f67059dce343b143ed909"
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

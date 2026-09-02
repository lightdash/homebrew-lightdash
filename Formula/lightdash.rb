class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.98.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.98.0/lightdash-cli-2.98.0-macos-arm64.tar.gz"
      sha256 "a9ec989f897ccc5d151264c352034c20df95f31ce56cb148e07b65e6cf4bde26"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.98.0/lightdash-cli-2.98.0-macos-x64.tar.gz"
      sha256 "1c8bafb81e20b7e9f92ac9276f6e030d295ac8606f86ddb27714c89faa012498"
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

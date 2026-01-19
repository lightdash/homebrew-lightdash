class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2353.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2353.3/lightdash-cli-0.2353.3-macos-arm64.tar.gz"
      sha256 "7d5ef18f739dcc73b21472ce4ab9cf9d6b9ac700fcb3f5a4dfc179cd7b0b6467"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2353.3/lightdash-cli-0.2353.3-macos-x64.tar.gz"
      sha256 "cb98eaf1982a53a364a16d07ae950f99b3ff77f9b15e242dab720b90f2a57a29"
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

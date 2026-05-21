class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3004.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3004.0/lightdash-cli-0.3004.0-macos-arm64.tar.gz"
      sha256 "7f05612690b308edacb8b5a4503241718d2b7a9172e43ff713f7d41ba6e7ed60"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3004.0/lightdash-cli-0.3004.0-macos-x64.tar.gz"
      sha256 "09d30dd24febc115dc9b9a8fd9c614fce0ca487ef7bb55e1b822fe726cf64640"
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

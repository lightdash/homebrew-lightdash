class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2979.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2979.0/lightdash-cli-0.2979.0-macos-arm64.tar.gz"
      sha256 "d67de7dc8488a57566acd1ce2123e248f8b4c821cd2c0cbd52722859d1e68ea4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2979.0/lightdash-cli-0.2979.0-macos-x64.tar.gz"
      sha256 "82aaab6a5ec19ab65ab0c42aa930f807a62dc58c89bc0bcb66af73ff71a4d8dd"
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

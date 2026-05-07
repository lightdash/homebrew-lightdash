class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2890.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2890.0/lightdash-cli-0.2890.0-macos-arm64.tar.gz"
      sha256 "85e634a471b186437dd1e64ff8023720a8cd80ee5a2aa4266161fca93be8d406"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2890.0/lightdash-cli-0.2890.0-macos-x64.tar.gz"
      sha256 "ce2f5abfef2c6a4daafc923afc2e639b8b7a876548c6f335489f9cfaac6679ba"
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

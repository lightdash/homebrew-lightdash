class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3025.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3025.1/lightdash-cli-0.3025.1-macos-arm64.tar.gz"
      sha256 "78ceea1b2f3875fa52f43f5458f87de5a8ef1e0cda20999567b42ac1e2a2bfd4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3025.1/lightdash-cli-0.3025.1-macos-x64.tar.gz"
      sha256 "8fe2e1caf9d67ce0a5e16dcba84fde21d088f8bf683eef12e9ae63cda5e40f5c"
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

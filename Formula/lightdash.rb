class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2662.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2662.1/lightdash-cli-0.2662.1-macos-arm64.tar.gz"
      sha256 "c06071234a9d2afbe0a09479fd45100c086961b17303607a9871cf6d51dfa6b5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2662.1/lightdash-cli-0.2662.1-macos-x64.tar.gz"
      sha256 "7fe61022bd401dca0e8a6a4a00727ee9d39adb5311639cc951a68b82331b8544"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2844.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2844.0/lightdash-cli-0.2844.0-macos-arm64.tar.gz"
      sha256 "d9d1b288dde2d5de4f24bfd85efbc0e9ab32a34516d197552522686792f473c1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2844.0/lightdash-cli-0.2844.0-macos-x64.tar.gz"
      sha256 "f99b17a60bcc22a7dfcfe0294480c8a5ea6f87ab51ca2abac5e6980aa535810f"
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

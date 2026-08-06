class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.96.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.96.0/lightdash-cli-1.96.0-macos-arm64.tar.gz"
      sha256 "583e9eede09237bcf7ddcafa4d75895c7537528922306c2a35963ef97283aede"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.96.0/lightdash-cli-1.96.0-macos-x64.tar.gz"
      sha256 "706605347a0b258a03d543a67a75287ccfbb54dea37d266f01d39e1fcfa399f7"
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

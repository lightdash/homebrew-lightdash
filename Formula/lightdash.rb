class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.120.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.120.0/lightdash-cli-1.120.0-macos-arm64.tar.gz"
      sha256 "3cfc8854d1e17ca5ea45ad9d3be402a1bbe171fdfd218baf13b7174f44499bd0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.120.0/lightdash-cli-1.120.0-macos-x64.tar.gz"
      sha256 "3fb10215926d5a26fd5742f9efe8881c3436b577b578ad5f3fd377b149e46ef5"
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

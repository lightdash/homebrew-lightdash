class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.54.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.54.0/lightdash-cli-2.54.0-macos-arm64.tar.gz"
      sha256 "0f92287c310fe6dbc9726f3aea53c6bf618535fe5ca9f0f4f5bfca848199a5fe"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.54.0/lightdash-cli-2.54.0-macos-x64.tar.gz"
      sha256 "ffbf8f534311a29e0e69a585f75cf7ae0fc5816086b1c1faeb5f7d3a39020981"
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

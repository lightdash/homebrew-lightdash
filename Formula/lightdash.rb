class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2604.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2604.1/lightdash-cli-0.2604.1-macos-arm64.tar.gz"
      sha256 "449955968cc1c65914e01f59a1f82ecdaae4f75f5bd419d77165264db5a5f492"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2604.1/lightdash-cli-0.2604.1-macos-x64.tar.gz"
      sha256 "2186cc8943738e890c47e1593f2975b631dcc1383ab023194731f626a344cf20"
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

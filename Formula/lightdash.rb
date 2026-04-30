class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2848.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2848.2/lightdash-cli-0.2848.2-macos-arm64.tar.gz"
      sha256 "77a13c288d77b0c9b08c1be4ce9049eeb0618eeae8124449166334c25238f1e5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2848.2/lightdash-cli-0.2848.2-macos-x64.tar.gz"
      sha256 "9a766181ce5a5793499b58047c337f34382cad202f8247d41949e4c69d6d1aaf"
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

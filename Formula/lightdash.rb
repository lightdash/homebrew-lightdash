class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2357.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2357.5/lightdash-cli-0.2357.5-macos-arm64.tar.gz"
      sha256 "9ceaeb6307aeee0e338d57bbcb6679d287a7dcc4c72797a59aafe098d988684f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2357.5/lightdash-cli-0.2357.5-macos-x64.tar.gz"
      sha256 "0c7546e38b465006dd1e63c99f0c89ebef42dd8d2514107834164239f09afc73"
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

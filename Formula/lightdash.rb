class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2873.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2873.0/lightdash-cli-0.2873.0-macos-arm64.tar.gz"
      sha256 "74ab790965974160706cc8cce695bf83358ff0bcf39e8656179f818d9f47b7b5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2873.0/lightdash-cli-0.2873.0-macos-x64.tar.gz"
      sha256 "5a1aa899a5a221067c94ab82409f6be627f06b92652671ba82eda474caa660a2"
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

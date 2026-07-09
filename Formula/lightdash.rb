class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3347.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3347.0/lightdash-cli-0.3347.0-macos-arm64.tar.gz"
      sha256 "98a2b8e001b77c41ceef96ad385d3b810fe5a9883f4ba734124136c050c39326"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3347.0/lightdash-cli-0.3347.0-macos-x64.tar.gz"
      sha256 "b7e3bd99c2dffcfe995325572d4c91e70709a53f6c2ab520c4f5ef07a9af4976"
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

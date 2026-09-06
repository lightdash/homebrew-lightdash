class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.134.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.134.2/lightdash-cli-2.134.2-macos-arm64.tar.gz"
      sha256 "b7a798d6a6a7e871724e9d984258427113c75107d19c86a35a9d76f1446d9b47"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.134.2/lightdash-cli-2.134.2-macos-x64.tar.gz"
      sha256 "f76cdc0ef75d8224d3415652bcbfdda7e55bb0c8f0d3ee9f76582fcbffa98c26"
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

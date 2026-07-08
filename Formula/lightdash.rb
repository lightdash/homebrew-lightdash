class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3330.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3330.0/lightdash-cli-0.3330.0-macos-arm64.tar.gz"
      sha256 "76fc86c030a35d3b6348ff3ad628dc9709d068872467423fd83de2adfcb59987"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3330.0/lightdash-cli-0.3330.0-macos-x64.tar.gz"
      sha256 "fc81cd4817f232bc542c6a3550d075a4dc0d6e4b6383cd1745a44b131a7ca3ac"
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

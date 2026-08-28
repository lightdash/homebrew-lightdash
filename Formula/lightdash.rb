class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.50.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.50.0/lightdash-cli-2.50.0-macos-arm64.tar.gz"
      sha256 "9162d093445fc730b2b6e1a0f60a8ec77286d9de387aaf2e8598f157dbf23d9a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.50.0/lightdash-cli-2.50.0-macos-x64.tar.gz"
      sha256 "373eed5ad85f8c30a79ee13cf10940edf45b89651017be1f859cb618be07a7bc"
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

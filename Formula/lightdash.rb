class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.63.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.63.1/lightdash-cli-3.63.1-macos-arm64.tar.gz"
      sha256 "25d0d4a51e1fbf2029a2a7fd4299804725d3b1b855ab2527b78fd311c33a21a9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.63.1/lightdash-cli-3.63.1-macos-x64.tar.gz"
      sha256 "2cab767211fed4ced8199bade4b37cca18406e66577eda716a1019cd538d8e8d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.63.1/lightdash-cli-3.63.1-linux-x64.tar.gz"
    sha256 "c4968a46aef6a756de738924222185d3d887eca9754500821167a5a3c149aa41"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end

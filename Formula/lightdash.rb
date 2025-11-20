class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2189.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2189.1/lightdash-cli-0.2189.1-macos-arm64.tar.gz"
      sha256 "74621736e2efa41a4b9a04ba957ac8c8b97f337f501fc14609a551c537f071be"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2189.1/lightdash-cli-0.2189.1-macos-x64.tar.gz"
      sha256 "d10fbb86e9353e766c0ffe81f8b1dde8292afeee8b572ddff00f180d9cdfd96f"
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

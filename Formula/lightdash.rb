class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2352.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2352.0/lightdash-cli-0.2352.0-macos-arm64.tar.gz"
      sha256 "2821d5b0afdc797b13683e0e05020fff7fb8d93eb8a060206f8327aa8780e1fa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2352.0/lightdash-cli-0.2352.0-macos-x64.tar.gz"
      sha256 "8d181db87a532b31f980508456229533effa3fd4380c12357046681a57a9b73d"
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

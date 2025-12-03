class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2218.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2218.2/lightdash-cli-0.2218.2-macos-arm64.tar.gz"
      sha256 "a0f1bd6978f5f6cf2dee60fdc36d31904f1a42da24b8469cdc18481bb60eb998"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2218.2/lightdash-cli-0.2218.2-macos-x64.tar.gz"
      sha256 "83bb0a73e0623babea0d2d80f31ca47aff2b1c73aaf2303ca18ddf078ae08c10"
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

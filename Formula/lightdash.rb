class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2478.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2478.0/lightdash-cli-0.2478.0-macos-arm64.tar.gz"
      sha256 "0523986bb930264540ad8bda5b8fbd52f3d192ed12f7e877cb8246512de30112"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2478.0/lightdash-cli-0.2478.0-macos-x64.tar.gz"
      sha256 "059460a964fe349e4e49eadbb455a32138f21a202438ef59c26de7469b65e0e5"
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

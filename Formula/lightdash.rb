class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3449.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3449.0/lightdash-cli-0.3449.0-macos-arm64.tar.gz"
      sha256 "26adf42e065520b4c3059561e2d7ae028935bb2cfc1c33fe003efe8dda5bd2af"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3449.0/lightdash-cli-0.3449.0-macos-x64.tar.gz"
      sha256 "258d533c70f2ce9b1d85d7663d3cd459b366d260d108068559c544ae122be115"
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

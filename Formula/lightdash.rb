class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3004.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3004.1/lightdash-cli-0.3004.1-macos-arm64.tar.gz"
      sha256 "3924ec9689b8546e56d4e637ef237cd4ed4d692ade13193e87fec2f4143f1d41"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3004.1/lightdash-cli-0.3004.1-macos-x64.tar.gz"
      sha256 "765d29864bf705215728c0dbaf8779eb74203de47e5cf9cc5072e5f18f1c7814"
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

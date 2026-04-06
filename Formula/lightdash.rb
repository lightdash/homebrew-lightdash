class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2728.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2728.0/lightdash-cli-0.2728.0-macos-arm64.tar.gz"
      sha256 "079057ddc96976379a64d8b129d047e7d8571d4c23ba254a6f3470c7402553cc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2728.0/lightdash-cli-0.2728.0-macos-x64.tar.gz"
      sha256 "9465be6e0d4727a68e0cad6e686760625ce5f9e30d8f289f7fce97a8af8864dd"
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

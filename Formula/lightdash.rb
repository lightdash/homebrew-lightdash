class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3475.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3475.0/lightdash-cli-0.3475.0-macos-arm64.tar.gz"
      sha256 "ba6006207dc6609cdcef90f0e90b5827dbd7d95331b96a8aeb3a1e37a0472fd5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3475.0/lightdash-cli-0.3475.0-macos-x64.tar.gz"
      sha256 "bfbd7b5049e9c616388f6f68b919518746380edf3a502dcf1984d165f61ef173"
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

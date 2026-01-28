class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2389.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2389.1/lightdash-cli-0.2389.1-macos-arm64.tar.gz"
      sha256 "8980508621a1c4020342a9239a26b8f7c2b234903ec16219459f8f2f20889119"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2389.1/lightdash-cli-0.2389.1-macos-x64.tar.gz"
      sha256 "5368b26428837e6043c8038a27211b67e24db5e8a0b2b7395fdf14b09cec0ae8"
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

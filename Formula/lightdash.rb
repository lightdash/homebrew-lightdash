class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.248.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.248.1/lightdash-cli-1.248.1-macos-arm64.tar.gz"
      sha256 "459823a11c468a01f2e86f93c7b31e1dc49e25a9e09d73c65b5946a12387ba12"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.248.1/lightdash-cli-1.248.1-macos-x64.tar.gz"
      sha256 "f710d7d4269f341d13498236cf46fde4ac6f5ab261d09181cd5d27efa7be125b"
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

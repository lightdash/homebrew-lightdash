class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2699.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2699.1/lightdash-cli-0.2699.1-macos-arm64.tar.gz"
      sha256 "5be5d7dbd626d5708035e88f82652477527195c692fc16627855e24f0891694f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2699.1/lightdash-cli-0.2699.1-macos-x64.tar.gz"
      sha256 "90b66c11b12ea92b87f6ce53c29128764e212211eb54bbdda7d13685a3a63552"
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

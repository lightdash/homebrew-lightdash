class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.606.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.606.5/lightdash-cli-2.606.5-macos-arm64.tar.gz"
      sha256 "8f582cb3e9eaee92d01659c746dfdb9fc75d2f76750516f1ca9015c99efdc2ff"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.606.5/lightdash-cli-2.606.5-macos-x64.tar.gz"
      sha256 "3a915626396a17f79f825449cda3c82872f1f3ad7cb391ed03c3d4f9a8280541"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.606.5/lightdash-cli-2.606.5-linux-x64.tar.gz"
    sha256 "efb0894e58f310cc190eceed41493867d76e654dc97da9603634ac2d793cb1df"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end

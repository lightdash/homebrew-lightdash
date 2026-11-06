class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.169.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.169.4/lightdash-cli-3.169.4-macos-arm64.tar.gz"
      sha256 "979a0b19ba75db4a70c434ca6668a6010f21c900d22ea669616a63a37e4b82f5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.169.4/lightdash-cli-3.169.4-macos-x64.tar.gz"
      sha256 "769b720753a5143ede0146f9d17d8a06effd0fb5201fc83bdfb4e8f7eb814f70"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.169.4/lightdash-cli-3.169.4-linux-x64.tar.gz"
    sha256 "8ff44849984f32572f78f59583c33875ac76f4b04b69af866211b91fddfcc97e"

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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.222.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.222.0/lightdash-cli-3.222.0-macos-arm64.tar.gz"
      sha256 "c0a2a1a5b48d0db97b523b09db8221cc0068b1e7691b462e4466ad43764c8b0e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.222.0/lightdash-cli-3.222.0-macos-x64.tar.gz"
      sha256 "dce898bf395199396eadd47589acbdb9c855bfea1b3c318729b8a51997192209"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.222.0/lightdash-cli-3.222.0-linux-x64.tar.gz"
    sha256 "382d31cd0c04ccfdf27cc84f16a84db329398e1842242cf8c43b7e70f95be764"

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

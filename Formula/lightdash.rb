class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.289.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.289.3/lightdash-cli-3.289.3-macos-arm64.tar.gz"
      sha256 "82691b92d696a095476c29d4af892d40d791f40d069aba48f96b15dd1d3d4d18"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.289.3/lightdash-cli-3.289.3-macos-x64.tar.gz"
      sha256 "3e75455ca2e99547c53a2cf419c390294206c122d5595a7f364e99f88ac0af90"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.289.3/lightdash-cli-3.289.3-linux-x64.tar.gz"
    sha256 "efa57b7788022f784ed6e56c5ffbe2045189187373847c0a6a43e2c86e81c7a8"

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

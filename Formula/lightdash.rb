class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.71.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.71.0/lightdash-cli-3.71.0-macos-arm64.tar.gz"
      sha256 "798d63e60b134c9e5794fa144a2ba8b7ca9f1b075c2e161bbb0cdc90b88723d0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.71.0/lightdash-cli-3.71.0-macos-x64.tar.gz"
      sha256 "8a64a23a149a597f6badbfbc6d3cb917da79469afb656b94028000989a48e374"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.71.0/lightdash-cli-3.71.0-linux-x64.tar.gz"
    sha256 "c8872a8559fd6fc922b57f6bedfc2828750bbfd535879c5095a171e1ea1773f3"

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

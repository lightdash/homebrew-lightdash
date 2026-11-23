class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.373.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.373.0/lightdash-cli-3.373.0-macos-arm64.tar.gz"
      sha256 "20d65e7cf0dd7c652a729c694672aeeee359ba3c61a405c316d1a2facca71b04"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.373.0/lightdash-cli-3.373.0-macos-x64.tar.gz"
      sha256 "452cb7000ea576feb069181bb45c2177abaa0717ac1f0595a070a5720cde85cb"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.373.0/lightdash-cli-3.373.0-linux-x64.tar.gz"
    sha256 "8fdb72eabe9b70160fd784ac7b58b867e2a1ee53e7acf2b14c4b9f7838945733"

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

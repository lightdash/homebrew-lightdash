class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.324.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.324.0/lightdash-cli-3.324.0-macos-arm64.tar.gz"
      sha256 "f72fdda56a06523a71b7f9833a7dbd33af93082b13633bd5760ae7d6c5d6c9c9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.324.0/lightdash-cli-3.324.0-macos-x64.tar.gz"
      sha256 "5fdaa373f1be64705057fe3a84cb8b3a53c05917815d88f64d4cc9d8ab1c0d5b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.324.0/lightdash-cli-3.324.0-linux-x64.tar.gz"
    sha256 "30bfc5778c099af99d113fd64729667faeb3805df94791511aa571d5d251226d"

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

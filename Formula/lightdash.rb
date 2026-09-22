class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.291.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.291.0/lightdash-cli-2.291.0-macos-arm64.tar.gz"
      sha256 "14474f72dc4dd96b6fc56e5f33dd37ea61f093a767268ab1376a40bb8cfc9ed9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.291.0/lightdash-cli-2.291.0-macos-x64.tar.gz"
      sha256 "c52f1285e46ec4096bdd2f42beba5ec332e88b09531bd96bdcf7be525e32e9f9"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.291.0/lightdash-cli-2.291.0-linux-x64.tar.gz"
    sha256 "d20bf5b7124134d449eb852f8d20571f1197cccf639aa5cdfe63fa45429b7c93"

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

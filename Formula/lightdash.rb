class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.450.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.450.0/lightdash-cli-2.450.0-macos-arm64.tar.gz"
      sha256 "a8e83273cdd81bfb80b89aebea720c0fa857c425764c7eb03401d6647bbfbd6a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.450.0/lightdash-cli-2.450.0-macos-x64.tar.gz"
      sha256 "59b7c5dee1f258a7c74d6d1103813a1017e859741244599925b996e037270507"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.450.0/lightdash-cli-2.450.0-linux-x64.tar.gz"
    sha256 "1ecea365b3454e9b9ff6bebb690914a9e71c4fc703544d33f69f724870b79571"

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

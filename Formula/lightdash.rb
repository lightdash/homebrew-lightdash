class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.50.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.50.2/lightdash-cli-3.50.2-macos-arm64.tar.gz"
      sha256 "9c8116d3bf2273dd470880e75140041f214a953c5a87a70126c15710b04de6d7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.50.2/lightdash-cli-3.50.2-macos-x64.tar.gz"
      sha256 "581833db995d82c1e12a18f35437e6038342e134118049ee78955a0c0d2bd825"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.50.2/lightdash-cli-3.50.2-linux-x64.tar.gz"
    sha256 "5ce147b84522443e19280c6bdf4bb3388a31c6a6fdd6d65152ee7e592a51a933"

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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.57.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.57.1/lightdash-cli-3.57.1-macos-arm64.tar.gz"
      sha256 "96e2de1172c31e2e747cf4bb2adfb775747cac9dfca5ec1fd7f959df4c149f4d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.57.1/lightdash-cli-3.57.1-macos-x64.tar.gz"
      sha256 "6cdbcba67cabc41aa713a5707a5d996018aca95464ede0346fd1b7c2a436b613"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.57.1/lightdash-cli-3.57.1-linux-x64.tar.gz"
    sha256 "4dac84eaaddbae53825003dd53a39b5500ba8af2a437e3df398c1089bd954d3e"

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

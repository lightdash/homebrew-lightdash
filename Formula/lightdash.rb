class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.100.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.100.0/lightdash-cli-3.100.0-macos-arm64.tar.gz"
      sha256 "330173e6a02bd8639f04d19087ba1408d32eab7c6b7c3fd4fba9bfdb5018766a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.100.0/lightdash-cli-3.100.0-macos-x64.tar.gz"
      sha256 "48db86da9921a9db84fe87c58edb0e949f60be079a761e47e6d93244423fe6f6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.100.0/lightdash-cli-3.100.0-linux-x64.tar.gz"
    sha256 "ff0c7c472288fdf5867c6e2bfce16b004889a039c70f29457979d0d356308ea2"

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

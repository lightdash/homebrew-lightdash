class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.198.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.198.0/lightdash-cli-3.198.0-macos-arm64.tar.gz"
      sha256 "c08c8195823b3148a0ac780d1029c394f074dfd5cb94baa58f0d39e171bf079a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.198.0/lightdash-cli-3.198.0-macos-x64.tar.gz"
      sha256 "4c97e1062051071790746db9ee4099884e8e66fa4695b815928b25b4d3134c76"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.198.0/lightdash-cli-3.198.0-linux-x64.tar.gz"
    sha256 "ec727e7c0b59b5dd6210b7d308bef155b8951956ae0819cfeb854d3986264072"

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

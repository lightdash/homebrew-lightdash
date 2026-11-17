class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.284.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.284.0/lightdash-cli-3.284.0-macos-arm64.tar.gz"
      sha256 "048719f144e2c7d67e3288aee66d2668494807234f3c59f30751ba95d0c4f53c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.284.0/lightdash-cli-3.284.0-macos-x64.tar.gz"
      sha256 "52dca37777969dde7d4c17413720c8a7eaca967f4e5ab9cdab6635865977564f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.284.0/lightdash-cli-3.284.0-linux-x64.tar.gz"
    sha256 "308f16eee9a244d1a427be8383a2264348e75a6dd583faae324045cb9b7aa748"

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

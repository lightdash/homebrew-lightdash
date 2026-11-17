class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.298.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.298.1/lightdash-cli-3.298.1-macos-arm64.tar.gz"
      sha256 "6d04a5815b5d8185355a235cd9ee19a7e98d2143fb11f62aa7862d914eb8d761"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.298.1/lightdash-cli-3.298.1-macos-x64.tar.gz"
      sha256 "4f0100771d78c2e73a40f26eebac178c2e2ee89396668f0d5c7f0709a87de94f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.298.1/lightdash-cli-3.298.1-linux-x64.tar.gz"
    sha256 "137b678d38553e798e02bbadb7598d723cd1d9314629ce38c070be1a9ef4a23c"

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

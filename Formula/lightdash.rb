class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.54.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.54.0/lightdash-cli-3.54.0-macos-arm64.tar.gz"
      sha256 "87c6f6c7e575d8e7d6f90314e2839ce8dfe4f0dc1dff831ffd1f4de47ea773f7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.54.0/lightdash-cli-3.54.0-macos-x64.tar.gz"
      sha256 "fe66e6e04f638d75629f8188f0dc4c8633c18a7b9f4eaf7c232b5233f655ee19"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.54.0/lightdash-cli-3.54.0-linux-x64.tar.gz"
    sha256 "8954c4fe02bded2ceee873ea087cecffd312a7658c64ff9407bd83172d3ae875"

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

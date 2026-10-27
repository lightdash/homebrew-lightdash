class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.73.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.73.3/lightdash-cli-3.73.3-macos-arm64.tar.gz"
      sha256 "fc6cc5197ac9408339f866f337df1dbd4b6a78ffc3af75c0966fe4b52dcb8726"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.73.3/lightdash-cli-3.73.3-macos-x64.tar.gz"
      sha256 "5142f12c6d68f81774036e6ff05be9a08e2aa8882692aa45f2849a4449ca062b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.73.3/lightdash-cli-3.73.3-linux-x64.tar.gz"
    sha256 "4119e109fe658d0fff787114344db9362a5822af4c31caa7f9a135d1d300112a"

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

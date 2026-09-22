class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.298.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.298.0/lightdash-cli-2.298.0-macos-arm64.tar.gz"
      sha256 "d18994841313d2434a802ff559527efcdd9ba800aa7f3ddf024c1f4c0d1f21c3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.298.0/lightdash-cli-2.298.0-macos-x64.tar.gz"
      sha256 "a8cd7b27570e493ec6e3c1252988c1319bbe0245d939f5a17f3208a6320d739e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.298.0/lightdash-cli-2.298.0-linux-x64.tar.gz"
    sha256 "6d6dd01cf2ff9aff3f45dbb0261bd45c230757e4c27d6fe7bff14f20195f9cf1"

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

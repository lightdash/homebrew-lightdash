class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.429.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.429.0/lightdash-cli-2.429.0-macos-arm64.tar.gz"
      sha256 "b82a204ce0d7e0a8ab0a22d19bec44b80f607628001192db418e0d6c97d5683d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.429.0/lightdash-cli-2.429.0-macos-x64.tar.gz"
      sha256 "35927c4f59a6ba88eb2825661c6c9a2ea1830d79bdbb596fde637430394631d7"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.429.0/lightdash-cli-2.429.0-linux-x64.tar.gz"
    sha256 "90d617bade68014560f3d1c6d156a925d2e0d32b7a480a027bd6d99503fc59ef"

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

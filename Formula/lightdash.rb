class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.135.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.135.2/lightdash-cli-3.135.2-macos-arm64.tar.gz"
      sha256 "7e00a58bbc66c507b7269f9ab3a05a70e8bf507edc9e2ffd63dc2e50bc01f017"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.135.2/lightdash-cli-3.135.2-macos-x64.tar.gz"
      sha256 "b6372e17642653070cc9a45dc5d92cad558ced08daa8ad7d38a1ca9780c599e9"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.135.2/lightdash-cli-3.135.2-linux-x64.tar.gz"
    sha256 "80784463da8ccec5cdfe5678a79cdeaa8e9bfbf68c4c5ad493918cd22c85a01b"

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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.342.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.342.2/lightdash-cli-2.342.2-macos-arm64.tar.gz"
      sha256 "1bebf8fa166f7a52d468cd82e58f575a3b56a5311f7b2373b3aaf995ee7c1320"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.342.2/lightdash-cli-2.342.2-macos-x64.tar.gz"
      sha256 "24869b71086a2d86f29224328a140d2a3ea4ba4d8f05dda7f96c3401d793b768"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.342.2/lightdash-cli-2.342.2-linux-x64.tar.gz"
    sha256 "fcfb47ddfee95379fb2f7a2593b357b92fae86688e3d8de106b7b1d13493e552"

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

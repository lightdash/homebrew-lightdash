class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.488.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.488.0/lightdash-cli-2.488.0-macos-arm64.tar.gz"
      sha256 "1710cfaddfe52dd4882ad28c0874d87ebcd08b274d6f23f1fdb5d32a1b28ee05"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.488.0/lightdash-cli-2.488.0-macos-x64.tar.gz"
      sha256 "f22364194eb3ac648ceb157c94313c7a694cb5df9037caed87df74d6264ae20e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.488.0/lightdash-cli-2.488.0-linux-x64.tar.gz"
    sha256 "54a027e0e24633afcfdc419630846c243c2227d3c22c2359a7b629c453f85311"

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

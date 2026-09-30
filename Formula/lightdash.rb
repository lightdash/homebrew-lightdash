class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.399.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.399.1/lightdash-cli-2.399.1-macos-arm64.tar.gz"
      sha256 "15d1a28693369993b5511b952c05881d1feb4b40c7984f361515864a23e24f3c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.399.1/lightdash-cli-2.399.1-macos-x64.tar.gz"
      sha256 "ac19dd978f5f7a24cde51398a7911137637ed29b67735b2f92365944448dd50e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.399.1/lightdash-cli-2.399.1-linux-x64.tar.gz"
    sha256 "0dbdde4d5c8d88d3fb3d2b5d558649f623fcfd9643fa883d73be66a2e78d3fa3"

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

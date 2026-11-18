class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.302.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.302.1/lightdash-cli-3.302.1-macos-arm64.tar.gz"
      sha256 "c2599bc7e9cd4cdff263cead729a8c54a4f652d0743436ba0f9ec2956104103d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.302.1/lightdash-cli-3.302.1-macos-x64.tar.gz"
      sha256 "b0cb6b7efc67d4880301ddbdb16e25bd1e4c82986d9ced97adadd0b69c587ba4"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.302.1/lightdash-cli-3.302.1-linux-x64.tar.gz"
    sha256 "c89d7ca2747ff153fcf487664998d2361ad02c942699b2863d3706470c403e0f"

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

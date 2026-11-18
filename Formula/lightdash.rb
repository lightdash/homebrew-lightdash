class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.303.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.303.2/lightdash-cli-3.303.2-macos-arm64.tar.gz"
      sha256 "fef415ef262bf48042355c79402298a6aff9f1aa8205a570a97f51d368c82701"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.303.2/lightdash-cli-3.303.2-macos-x64.tar.gz"
      sha256 "45c23cc575573063ae572d29b68d55df5814a1999ae972916c157b212890e238"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.303.2/lightdash-cli-3.303.2-linux-x64.tar.gz"
    sha256 "a53429a05ad644f448c3887434a9c3dcfb30d3d5964781f01f1b89c1a6b1ac27"

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

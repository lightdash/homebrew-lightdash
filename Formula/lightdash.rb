class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.415.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.415.0/lightdash-cli-2.415.0-macos-arm64.tar.gz"
      sha256 "78192b6899c60b85437b1df6a84ef28a8a84abc86a0c8696dc48f17a0b3bd890"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.415.0/lightdash-cli-2.415.0-macos-x64.tar.gz"
      sha256 "9b9a23af54225ccf3bae0ea1dbf605f031a94d808f48bde00ae297c4e0125eab"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.415.0/lightdash-cli-2.415.0-linux-x64.tar.gz"
    sha256 "c3530b3be0d47364f5d1ab3321dac13ac553297a18f9072f8abd2afe77aa05da"

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

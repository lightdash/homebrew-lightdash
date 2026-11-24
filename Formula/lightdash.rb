class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.385.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.385.4/lightdash-cli-3.385.4-macos-arm64.tar.gz"
      sha256 "c2ff4a1ce0bc417ae20e75a6f4cc080fa331700791592e511b5052337aee2b5d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.385.4/lightdash-cli-3.385.4-macos-x64.tar.gz"
      sha256 "a7280103984c257752bdbb3c45db3518d3e2d13a4c2f665fcf154f2ad751337e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.385.4/lightdash-cli-3.385.4-linux-x64.tar.gz"
    sha256 "a3829e614e00e2905e4738546545f33b4cc0ae524a540e26071bf57e0deba2ca"

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

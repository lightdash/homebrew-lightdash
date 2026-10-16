class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.589.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.589.4/lightdash-cli-2.589.4-macos-arm64.tar.gz"
      sha256 "003ab9742b41fdadf3110b01c2dc2d9ad7cd654f2d72cde62821fdb14f3c73a2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.589.4/lightdash-cli-2.589.4-macos-x64.tar.gz"
      sha256 "0b3049c2ae848d0f6191c94c57f77f3f35e246a0f1eb635ae5de79c8135429e8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.589.4/lightdash-cli-2.589.4-linux-x64.tar.gz"
    sha256 "e3ef50458594b5f752c6f271517416d64a97b1e43b8a5ca4b5926725adb3841c"

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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.414.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.414.0/lightdash-cli-2.414.0-macos-arm64.tar.gz"
      sha256 "c1b394a5e04641bceef3ae96e9463c64552d91ca0ee475f456df3014c76e9cb6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.414.0/lightdash-cli-2.414.0-macos-x64.tar.gz"
      sha256 "65f4b7b23d80afa412843587cf4d9f733598178c43b4c6a2b5ca933693dec46a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.414.0/lightdash-cli-2.414.0-linux-x64.tar.gz"
    sha256 "51adf8cf4f89ba0a6fce8cdb3d80fb2775635ba7d05b1aec70181d5bc8542717"

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

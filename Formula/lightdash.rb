class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.577.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.577.1/lightdash-cli-2.577.1-macos-arm64.tar.gz"
      sha256 "d32597a10df96e3776d9ba0b785ac81dd2da2d9ab31581a3bb7339169055d298"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.577.1/lightdash-cli-2.577.1-macos-x64.tar.gz"
      sha256 "291ee275a5eb02081f3434cea9d4bde8f0b1b783ea45bdd22ab5b8d96ada0c94"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.577.1/lightdash-cli-2.577.1-linux-x64.tar.gz"
    sha256 "d04600270e3a96cfdb6bd5d2db960178ca60c20d5133b4ff524f68289a6474e4"

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

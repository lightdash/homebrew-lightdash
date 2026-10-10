class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.553.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.553.0/lightdash-cli-2.553.0-macos-arm64.tar.gz"
      sha256 "90acfd91440c5873b30519e606709950654ea6ab2f663190391c5fee8bb39311"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.553.0/lightdash-cli-2.553.0-macos-x64.tar.gz"
      sha256 "d60317e8ddcc64be3b0ca269cc22fb7fdec4dcead24846c566b9464b46a3b685"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.553.0/lightdash-cli-2.553.0-linux-x64.tar.gz"
    sha256 "b481c8b98b126abf55540bd6859d65c824ce5d33ff4ff4888c01fdba108710a5"

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

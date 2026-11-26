class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.416.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.416.0/lightdash-cli-3.416.0-macos-arm64.tar.gz"
      sha256 "7b351f58134665471bb7cb4888331be9c13dafc8dc3b7c29083068fefe105acc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.416.0/lightdash-cli-3.416.0-macos-x64.tar.gz"
      sha256 "62d6465520d8f4c12a4665115dd15a2ed0d2b88e4ff7b5643f1d350e29d419c6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.416.0/lightdash-cli-3.416.0-linux-x64.tar.gz"
    sha256 "ff0d47ce613b1417e1be3f382ff3049d3ee831a084362b06d5d52a3074366011"

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

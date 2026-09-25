class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.342.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.342.0/lightdash-cli-2.342.0-macos-arm64.tar.gz"
      sha256 "039c2f4ad6ec6caf2446e4e459b7cb4ff0dccd4038e079c80fe1dfc20b7bddc1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.342.0/lightdash-cli-2.342.0-macos-x64.tar.gz"
      sha256 "b7304073a83d2a86ffa72898f1e98021b63682e47e5caee9c1c7e01bd97351aa"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.342.0/lightdash-cli-2.342.0-linux-x64.tar.gz"
    sha256 "9b4a143179163869cb39b9374028a30a205ad3d2713e22cff7a7274a35c3b0a6"

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

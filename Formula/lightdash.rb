class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.442.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.442.0/lightdash-cli-3.442.0-macos-arm64.tar.gz"
      sha256 "dbebca8d40b510aace5ecb4e9f4ba72372917b6d059823eb8016f86bf5f5e26f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.442.0/lightdash-cli-3.442.0-macos-x64.tar.gz"
      sha256 "6a7f4ecaba3e045c153f9ac8bd94cfe032ce75697b468078f109089edbb11e20"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.442.0/lightdash-cli-3.442.0-linux-x64.tar.gz"
    sha256 "b23c940cb59c3b7bee7364fa1cea34aba2145c6b026bc952c4e961bd6ede2289"

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

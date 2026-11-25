class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.397.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.397.0/lightdash-cli-3.397.0-macos-arm64.tar.gz"
      sha256 "2031e1391cbc57bb861e6e7891e0127438a39e9da65825499745b2cb62f2eb05"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.397.0/lightdash-cli-3.397.0-macos-x64.tar.gz"
      sha256 "dfbe04f5e16d335d7d8beeedc6f38e188ef34adecc1f2a9c4ec25703880a8a8c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.397.0/lightdash-cli-3.397.0-linux-x64.tar.gz"
    sha256 "702da93586a1429c33d0c6a66624df1e608571fc9a0029990665ae45eb34c5c8"

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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.6.0/lightdash-cli-3.6.0-macos-arm64.tar.gz"
      sha256 "010da8a65790c79b0cc45da4f78d0b0b1efa005994c12625eb3794fbbafa701f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.6.0/lightdash-cli-3.6.0-macos-x64.tar.gz"
      sha256 "20ca4cd256ee85f57dafe38e63c321f2270c592d20ad491270a8d6c39b0a705f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.6.0/lightdash-cli-3.6.0-linux-x64.tar.gz"
    sha256 "a9f2648fd80b383c393cdcda0aec26f411acdb68cf763566c2757b0acb52bf0a"

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

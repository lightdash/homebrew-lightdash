class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.140.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.140.0/lightdash-cli-3.140.0-macos-arm64.tar.gz"
      sha256 "04c5829b1ababfe2abfd4decd9468a95f28122adbf0843a76e41715106f7fc3b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.140.0/lightdash-cli-3.140.0-macos-x64.tar.gz"
      sha256 "27cfb211903e3d2c1bbd47c92e04af0d2d91f3634a9abeedfb4b422496b7baae"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.140.0/lightdash-cli-3.140.0-linux-x64.tar.gz"
    sha256 "ae3c2fbe03f01c7761fa06bf07c795b29f22396d92fd4dfa5237dce801f014f6"

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

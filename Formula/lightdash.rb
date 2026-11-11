class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.212.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.212.0/lightdash-cli-3.212.0-macos-arm64.tar.gz"
      sha256 "a643078c9a5c07ea447f7702bd3b0e7d47ee51483e6de57bed6260bd40815543"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.212.0/lightdash-cli-3.212.0-macos-x64.tar.gz"
      sha256 "011d40a513481e5934cfd95bd8ebcd4eeac07148308b8941dea6be5d55a35df9"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.212.0/lightdash-cli-3.212.0-linux-x64.tar.gz"
    sha256 "5e1b4a03aa77464a14914eccb1c04af0e4c062798f4b8c8fc90a1a9423364bf5"

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

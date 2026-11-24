class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.385.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.385.1/lightdash-cli-3.385.1-macos-arm64.tar.gz"
      sha256 "35301cc4d75909ba3b5cb52170615689fd5db400f77cfac796cf102ab8a9210e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.385.1/lightdash-cli-3.385.1-macos-x64.tar.gz"
      sha256 "2a1b1728a4a9726c23012b6720adc888305dcd37d9631f34f2b36512422b60f3"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.385.1/lightdash-cli-3.385.1-linux-x64.tar.gz"
    sha256 "b433f5f1f304a6dfbc9ae0d0e8625d0de375663030e156bdd9252ab97666d769"

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

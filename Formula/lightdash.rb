class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.148.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.148.1/lightdash-cli-3.148.1-macos-arm64.tar.gz"
      sha256 "db6a1e9f0483adce8398de76f56a61fdc6b5fd19ba4a0a9cc4a6d0be01b1b582"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.148.1/lightdash-cli-3.148.1-macos-x64.tar.gz"
      sha256 "ffc2bf8103d7210921c38355c7d79dc1c839da697b1aac4e48a3a8d2505baa94"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.148.1/lightdash-cli-3.148.1-linux-x64.tar.gz"
    sha256 "90bb2ca5d16e3aed21a4991569f75afac5160689fe1939fbcadb4e77441dc0c4"

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

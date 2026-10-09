class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.529.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.529.0/lightdash-cli-2.529.0-macos-arm64.tar.gz"
      sha256 "85650670917ab42b48dbdd4e38ade0ed7918dd3216cae1aced660157ced7fa05"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.529.0/lightdash-cli-2.529.0-macos-x64.tar.gz"
      sha256 "a516ecf25f1df928ef5c7b6accaad4becf8e43e6d0d1c11a5ab4687d0b6c07eb"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.529.0/lightdash-cli-2.529.0-linux-x64.tar.gz"
    sha256 "7a9fb831670635c193d441ecf75b98e4928ae2df42556e757cf1be659a234d20"

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

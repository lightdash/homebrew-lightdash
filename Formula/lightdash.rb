class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.383.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.383.1/lightdash-cli-3.383.1-macos-arm64.tar.gz"
      sha256 "7e932189371bfa56e69d98bad5a3e370849c48f8108f7cd6c18bddb992517b62"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.383.1/lightdash-cli-3.383.1-macos-x64.tar.gz"
      sha256 "826658610a690d8348c93c0e4c66cea221bee5e7f3ac8b0d24b34c32336ba675"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.383.1/lightdash-cli-3.383.1-linux-x64.tar.gz"
    sha256 "0afc84a6467fa6db56c1a5c1df14d0d2ee205217a15df138ebd6509b49336013"

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

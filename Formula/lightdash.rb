class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.351.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.351.3/lightdash-cli-3.351.3-macos-arm64.tar.gz"
      sha256 "d249e4591da4a9f10177b43827cc33a635ef90b2ad4a8e49c4b045fa4eff7cfa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.351.3/lightdash-cli-3.351.3-macos-x64.tar.gz"
      sha256 "2820a69a67706730703e906dfa7ce8257e87076cee17341156aaf456bc4c9b7e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.351.3/lightdash-cli-3.351.3-linux-x64.tar.gz"
    sha256 "c00a31c9f1efb5884d2584f0fd553365770139a07ce35d93ef4ee0a379071c3a"

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

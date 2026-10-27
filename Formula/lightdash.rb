class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.69.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.69.1/lightdash-cli-3.69.1-macos-arm64.tar.gz"
      sha256 "711e107103bac0dc6d377c8f0258ebfe100419e0af1ef637302ea5d6e9796e60"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.69.1/lightdash-cli-3.69.1-macos-x64.tar.gz"
      sha256 "b89ff176fa95f87389d88cc888cd4d9578f2caa8fb98c5b9de9ea0e6507ba515"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.69.1/lightdash-cli-3.69.1-linux-x64.tar.gz"
    sha256 "393dfbfe90bb1080351d12b28702a6fed1415d740df960670206c3e2bbd891c0"

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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.357.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.357.1/lightdash-cli-3.357.1-macos-arm64.tar.gz"
      sha256 "6d57857be4519fc9eadb940c63c83dbeb6fa6328cb633a2ab4fab8e575b93869"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.357.1/lightdash-cli-3.357.1-macos-x64.tar.gz"
      sha256 "88b32a813febfa70a7d968d5d701107704f2f5e60cd01cbe2a483e24f60824a1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.357.1/lightdash-cli-3.357.1-linux-x64.tar.gz"
    sha256 "2f8c46e88779c72774d418656d14db5d34cbf38bc86fe84847046bba11f64486"

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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.210.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.210.2/lightdash-cli-3.210.2-macos-arm64.tar.gz"
      sha256 "135000321b43a58bf14fc8c7c5fcaf0272a0024f3c8c97a0bdfb3185751132ea"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.210.2/lightdash-cli-3.210.2-macos-x64.tar.gz"
      sha256 "52777c91eccaa945523a0afb8dc5d4f0d6640fbc656954a461f9941c7ac25ee9"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.210.2/lightdash-cli-3.210.2-linux-x64.tar.gz"
    sha256 "4e607971641b264608481b1ee31716d72fbc7ed39aac633a84be5e39d276bed7"

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

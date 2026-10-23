class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.51.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.51.0/lightdash-cli-3.51.0-macos-arm64.tar.gz"
      sha256 "efb0bdc5f0918b2b02cfa238e330174c38bc74751e0c2310cb39da25e02789d4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.51.0/lightdash-cli-3.51.0-macos-x64.tar.gz"
      sha256 "c139a70ea6f14a9a1aeaec285e48ddf2c8c4f98e7ae59746a9f2c98dc3bdf33e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.51.0/lightdash-cli-3.51.0-linux-x64.tar.gz"
    sha256 "c244cc68245c592996820f2af56ad94dca51bd6fdb8ee1c48f49f4bba346b784"

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

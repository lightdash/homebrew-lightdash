class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.181.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.181.0/lightdash-cli-3.181.0-macos-arm64.tar.gz"
      sha256 "681525424ba88d7c88c4d43b3348ea4368322d9fddbff0f61bd3b16a962745d4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.181.0/lightdash-cli-3.181.0-macos-x64.tar.gz"
      sha256 "4aff3f3bb3f211d41a7768decbadd88e51584a9440fc9ae7684450ba512a1b59"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.181.0/lightdash-cli-3.181.0-linux-x64.tar.gz"
    sha256 "637c4cd252fb0217be50033962ae97abefa26030a4a29f984e600b93044e9b30"

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

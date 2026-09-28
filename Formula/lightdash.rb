class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.352.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.352.0/lightdash-cli-2.352.0-macos-arm64.tar.gz"
      sha256 "339bf3ab8e8c0026ddf030b02ae76fa7cd748fd93a73c7278ec29de4fd03802f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.352.0/lightdash-cli-2.352.0-macos-x64.tar.gz"
      sha256 "821d4cba8d235a511e04dd2baf32946d04d8a1197fc102c32ffb7a66814251d7"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.352.0/lightdash-cli-2.352.0-linux-x64.tar.gz"
    sha256 "831c875c34538522d1dae793663ba296955ade9bc83bddd51c957e6a3ede715f"

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

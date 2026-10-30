class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.107.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.107.0/lightdash-cli-3.107.0-macos-arm64.tar.gz"
      sha256 "922025dfcc52c68db1d540de096c45472a6bd544f9ce581c025c8daeeeff37ee"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.107.0/lightdash-cli-3.107.0-macos-x64.tar.gz"
      sha256 "494b867430842b57bd1431ef7541497c9e4121dc8b4f5fc88a9514df97bbf46f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.107.0/lightdash-cli-3.107.0-linux-x64.tar.gz"
    sha256 "662625da889a4a699c1e50cbf44037f8972a012b3f96c0f15682f2326cf6c154"

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

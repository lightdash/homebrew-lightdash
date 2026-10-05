class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.431.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.431.0/lightdash-cli-2.431.0-macos-arm64.tar.gz"
      sha256 "d80407e16a79795a6c2379a6a8c19000fb5f740563044117a7f61e4582d96cac"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.431.0/lightdash-cli-2.431.0-macos-x64.tar.gz"
      sha256 "2ce6498f2dc22075a4e89b97238764381776ff932edced2313e5a1104d9ea695"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.431.0/lightdash-cli-2.431.0-linux-x64.tar.gz"
    sha256 "3eb4432d81c16f8cdb4221286ecf0e557b1007114efe50c3f88220596dcc0c4b"

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

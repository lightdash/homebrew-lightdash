class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.395.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.395.1/lightdash-cli-3.395.1-macos-arm64.tar.gz"
      sha256 "2bd87028542c9afaae95c9a0f24ac1f00d565002921384b245412e2cc370c56a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.395.1/lightdash-cli-3.395.1-macos-x64.tar.gz"
      sha256 "f6b198680f2e646bdae5a4c3e461064fdba9ede44cf26e71409d19286cb735c0"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.395.1/lightdash-cli-3.395.1-linux-x64.tar.gz"
    sha256 "bae4db1a044fa37224ba37335d7b74e8ad0eff7305ee45c3487a025e4fda4857"

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

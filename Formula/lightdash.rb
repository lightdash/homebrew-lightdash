class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.136.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.136.1/lightdash-cli-3.136.1-macos-arm64.tar.gz"
      sha256 "621b7b31836e0235b1e607997344118a1f3b78fb2f49b445b087c0ab9050ef30"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.136.1/lightdash-cli-3.136.1-macos-x64.tar.gz"
      sha256 "eed2e7e51ac562406e1fdecffaab5f4256f6ff4fcda2ef6cbc9d6c407f43071c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.136.1/lightdash-cli-3.136.1-linux-x64.tar.gz"
    sha256 "89eda39e5bd94234777e3507f7bd48a00512a066a98652cb71527ed5230cd200"

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

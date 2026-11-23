class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.369.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.369.2/lightdash-cli-3.369.2-macos-arm64.tar.gz"
      sha256 "f47e9d322a563dea81b13f32028a93bfbe2b372222b30573aeb55376bed734a3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.369.2/lightdash-cli-3.369.2-macos-x64.tar.gz"
      sha256 "a7b575801c97edb7c361cd2b91437615a49859bf227493c42bccbc4102af924b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.369.2/lightdash-cli-3.369.2-linux-x64.tar.gz"
    sha256 "48bbbe383cc304c0d7157ebdf010cb532be8832fd815ba73c6b22397bd6d77f5"

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

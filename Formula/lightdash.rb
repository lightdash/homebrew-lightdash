class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.564.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.564.0/lightdash-cli-2.564.0-macos-arm64.tar.gz"
      sha256 "b3282bd5954d733fdef9dacf30e02308d018e5c83eda37378f7812ca7926401e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.564.0/lightdash-cli-2.564.0-macos-x64.tar.gz"
      sha256 "e0a07d68fb6d0e4df7f738881a51e120f699d3062347b27ee54fbbd0681a2ce0"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.564.0/lightdash-cli-2.564.0-linux-x64.tar.gz"
    sha256 "0715ae3a2a0cd1f29be413b4c382cc6fc73cea2506795019d8698196fa4163be"

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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.305.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.305.2/lightdash-cli-2.305.2-macos-arm64.tar.gz"
      sha256 "e5e45fd819bfed5d42d3b560dfbe39c6acfab7ecfc3f3505961bb4300f986a34"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.305.2/lightdash-cli-2.305.2-macos-x64.tar.gz"
      sha256 "09829ebb179d600be71418d95d129cd172e4d4d6b0c8ce03771b99d069ea69c8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.305.2/lightdash-cli-2.305.2-linux-x64.tar.gz"
    sha256 "caa4c7030971d1190787605bf24858fef1884853c2a1b5a3ad10f24cc22be0df"

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

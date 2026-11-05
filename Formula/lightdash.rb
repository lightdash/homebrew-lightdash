class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.163.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.163.1/lightdash-cli-3.163.1-macos-arm64.tar.gz"
      sha256 "7fe9b80150aafa31e37d3285eb4cedf895ae159bfb195978fce8a3017b414ed5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.163.1/lightdash-cli-3.163.1-macos-x64.tar.gz"
      sha256 "3b9859b74ccd69c07edf09c8d606909153f5c5839bc0388a30ee61898ac9fbae"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.163.1/lightdash-cli-3.163.1-linux-x64.tar.gz"
    sha256 "57f6a6120653b70914f56b4bbacb8cbbbcd0a1623cf74d9ce2d8e17377672ecc"

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

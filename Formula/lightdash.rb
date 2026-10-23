class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.42.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.42.2/lightdash-cli-3.42.2-macos-arm64.tar.gz"
      sha256 "b902091a3907b604cb185e5ea9219e7f9abceb6e868caa383439a7631c605605"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.42.2/lightdash-cli-3.42.2-macos-x64.tar.gz"
      sha256 "00ceb285644e96a51915ae3b54058d09e004d3dba46181c01acba6ba0a8d62c0"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.42.2/lightdash-cli-3.42.2-linux-x64.tar.gz"
    sha256 "429eaaad425749d8e3fd1d21bee080582840b3752fbacecc0759fe9b685781dd"

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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.507.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.507.0/lightdash-cli-2.507.0-macos-arm64.tar.gz"
      sha256 "d83bedd7073d8c0132a27e061ab0380fbb740b8886f7c919defdae927d2095d3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.507.0/lightdash-cli-2.507.0-macos-x64.tar.gz"
      sha256 "015f58f254758df77489a0466a640eef9516308e5c859be5e52db2c450f311d9"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.507.0/lightdash-cli-2.507.0-linux-x64.tar.gz"
    sha256 "0f17f71ef56a28808e1d8422e1d71ea1992d08cc86a7707f1f43ae2fc2e3f34c"

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

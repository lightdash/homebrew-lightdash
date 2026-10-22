class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.25.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.25.1/lightdash-cli-3.25.1-macos-arm64.tar.gz"
      sha256 "63398f580b4291b0365790c40c74bf31a759e4ff2edbf11fab1bd707d83a0dba"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.25.1/lightdash-cli-3.25.1-macos-x64.tar.gz"
      sha256 "b18483746034a05988d717e438da844e5bd6c880679b07b6b73ca36e0a00d9ba"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.25.1/lightdash-cli-3.25.1-linux-x64.tar.gz"
    sha256 "96ddf313df26d60cefe575bf115874962ee46497bc5ae95d511974fa32337230"

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

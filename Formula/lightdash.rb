class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.217.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.217.0/lightdash-cli-3.217.0-macos-arm64.tar.gz"
      sha256 "a0ad5a064f341bf40095635dd57b153f36f0422049726be307a0324b419c6ad5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.217.0/lightdash-cli-3.217.0-macos-x64.tar.gz"
      sha256 "da17b22e2df4eed42f50783cd309a196eadc0348b358d929e3ef60b9bf30c9e7"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.217.0/lightdash-cli-3.217.0-linux-x64.tar.gz"
    sha256 "d9479d6fb992c1df5eb674622e410cbb2b1276b945344800a03e86f872d94f1e"

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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.296.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.296.0/lightdash-cli-3.296.0-macos-arm64.tar.gz"
      sha256 "af8e493a9dcfb3dc112059db25ccfc7123e8e0bd4201b157b0b2f01701100cf8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.296.0/lightdash-cli-3.296.0-macos-x64.tar.gz"
      sha256 "93ff707ac107e36c44abaedef5c0723010b2bfebba1524da3e791634621bf96a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.296.0/lightdash-cli-3.296.0-linux-x64.tar.gz"
    sha256 "b63c8806c79befa9dd9090f862bd9721c0aa79b1d71f5ad78ef2ef95b23c4b4e"

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

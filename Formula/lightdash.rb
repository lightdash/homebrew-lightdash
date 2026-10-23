class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.45.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.45.0/lightdash-cli-3.45.0-macos-arm64.tar.gz"
      sha256 "76bac4c87fea6ea690c113178d32d52578f1114188919b37ead7f2d72c767ad3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.45.0/lightdash-cli-3.45.0-macos-x64.tar.gz"
      sha256 "869696e5be5201ebee3b66567e334c2ea9fa3b4559ad1b3dd0969b218e0ba9a0"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.45.0/lightdash-cli-3.45.0-linux-x64.tar.gz"
    sha256 "a7495eb5574ffa47373cd71c0c442d19e89a4b7a47b2ee3a78a41760c2f544ff"

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

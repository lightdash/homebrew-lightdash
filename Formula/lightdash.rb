class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.56.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.56.0/lightdash-cli-3.56.0-macos-arm64.tar.gz"
      sha256 "b7385309c2789679913f02d1546acd80043dab47a3c78605e479900124678ae9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.56.0/lightdash-cli-3.56.0-macos-x64.tar.gz"
      sha256 "0903817bc1cad6f3c8ee94683562592c4bc777f576a26c09d13afbc5be43ac6e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.56.0/lightdash-cli-3.56.0-linux-x64.tar.gz"
    sha256 "c637afc8e808f877a14222937284f4d282c211410414ee9629ebfbb9f4c50282"

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

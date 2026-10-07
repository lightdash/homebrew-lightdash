class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.454.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.454.0/lightdash-cli-2.454.0-macos-arm64.tar.gz"
      sha256 "8c7ef1bb5d6d8aa1dc134925ff8118114ec51ede181d376dc4a81879a3a90a8b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.454.0/lightdash-cli-2.454.0-macos-x64.tar.gz"
      sha256 "513f50ae87927a2a75c4de6539ea22bdd0c8df6f19c2b9cccf5eb06e77bc71b7"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.454.0/lightdash-cli-2.454.0-linux-x64.tar.gz"
    sha256 "81378fedae51589a62a5b411361110af9c7ae108c164552be3617515134a3421"

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

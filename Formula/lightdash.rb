class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.631.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.631.2/lightdash-cli-2.631.2-macos-arm64.tar.gz"
      sha256 "f96aa0ab718e47a5869e3fbdc13889286b0f42ed785c65462c55a835ca9e26ab"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.631.2/lightdash-cli-2.631.2-macos-x64.tar.gz"
      sha256 "d54af47ee351390d06dc291452f9b90c26c18cb00e9f140a8a46866e5e5d2bb3"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.631.2/lightdash-cli-2.631.2-linux-x64.tar.gz"
    sha256 "7015aa44a9447adddd4723e7e451994d1b91ea68a41ac7d62e7b6d8e3030ce6c"

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

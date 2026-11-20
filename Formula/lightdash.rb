class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.356.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.356.0/lightdash-cli-3.356.0-macos-arm64.tar.gz"
      sha256 "e64a143256a4d39f2f1768c7d6162872b30195436e4758b1233c1a119e872662"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.356.0/lightdash-cli-3.356.0-macos-x64.tar.gz"
      sha256 "b060324a3b4061c344bc3ee543f5132ef9a11593b198f9f6e73232592337235c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.356.0/lightdash-cli-3.356.0-linux-x64.tar.gz"
    sha256 "4ee6cb1315163643df3719b3a659228957ccf80f3a9a56ab2a4532c262a2916e"

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

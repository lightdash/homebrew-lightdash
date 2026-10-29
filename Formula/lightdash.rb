class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.104.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.104.2/lightdash-cli-3.104.2-macos-arm64.tar.gz"
      sha256 "10011d1b1ada5a384b98421ee950e1f23804c061a385d7c21a572e0f34f49ca8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.104.2/lightdash-cli-3.104.2-macos-x64.tar.gz"
      sha256 "6a080b25915c4e2c95084cdfee83ba6ea34b421692a8669139af319ce014a193"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.104.2/lightdash-cli-3.104.2-linux-x64.tar.gz"
    sha256 "3df6ea4721d90219f069234cafb8c5adffacc30b814da7e88b5eaef71da07d39"

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

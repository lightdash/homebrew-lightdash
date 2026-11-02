class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.119.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.119.0/lightdash-cli-3.119.0-macos-arm64.tar.gz"
      sha256 "4fdebc209df1bbdd0e9a0bc725f25266d6156d75a2ced0b0ccfbabe58d07fba8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.119.0/lightdash-cli-3.119.0-macos-x64.tar.gz"
      sha256 "3c3fcccfc751a2169126ad2f87fa64cbcb9984ae38fe5e71749a8ab28f124ec3"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.119.0/lightdash-cli-3.119.0-linux-x64.tar.gz"
    sha256 "44515ed40f369b1da28d33c4ce22526a1b482e46a3948aebc1f15036343ba6d9"

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

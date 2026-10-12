class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.571.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.571.0/lightdash-cli-2.571.0-macos-arm64.tar.gz"
      sha256 "1fc922a4ea04c556cacfacea96e866ba3346b03d5aea4b91fcb9bb5a8b0cec14"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.571.0/lightdash-cli-2.571.0-macos-x64.tar.gz"
      sha256 "26d4a286b519f135d21a989b77ef36f4f48404f12ca212e0a8fe8491443fd43f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.571.0/lightdash-cli-2.571.0-linux-x64.tar.gz"
    sha256 "57798190d6f0eebd4b93ee2f3eb3f01870b9752258e3af91c097ee98763b6346"

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

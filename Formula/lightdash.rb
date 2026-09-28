class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.351.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.351.1/lightdash-cli-2.351.1-macos-arm64.tar.gz"
      sha256 "d015dfbc51eeb6de1a9c3b7e6f156a24fef508304a516ad1c9c2157d1bc30d55"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.351.1/lightdash-cli-2.351.1-macos-x64.tar.gz"
      sha256 "14231ebafeb9d602535c3e3b9fe427c38003e76c48188d0d91f48c618af245be"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.351.1/lightdash-cli-2.351.1-linux-x64.tar.gz"
    sha256 "6a1ee31b9cbce2f201b3580d0b280d076033918f607306056672d4c44d535274"

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

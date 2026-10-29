class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.103.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.103.0/lightdash-cli-3.103.0-macos-arm64.tar.gz"
      sha256 "9dd251e27861c2b3950d4cc6147966b40982a73b951f62f05205430c6ab77388"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.103.0/lightdash-cli-3.103.0-macos-x64.tar.gz"
      sha256 "e6b4479700a1d00d9541d8793a220fa8e7c0d52647aa692bb3403da19586b195"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.103.0/lightdash-cli-3.103.0-linux-x64.tar.gz"
    sha256 "5df973a3c10519360133088605a4d0301e20b9a4df570071a13a31879dc88d34"

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

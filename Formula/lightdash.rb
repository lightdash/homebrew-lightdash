class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.50.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.50.1/lightdash-cli-3.50.1-macos-arm64.tar.gz"
      sha256 "184797799a9c909b68ba8c2b9d5723a301abbbfb11d155cc2e100dbb0c093802"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.50.1/lightdash-cli-3.50.1-macos-x64.tar.gz"
      sha256 "64c17a7ea99942a40facabb1223b20473461f4b4a977e3e4063c85cd31ef9857"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.50.1/lightdash-cli-3.50.1-linux-x64.tar.gz"
    sha256 "b52c20694ea90517f3e08760c0d09be00bb9b668c0755f39a07f0d06b228a236"

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

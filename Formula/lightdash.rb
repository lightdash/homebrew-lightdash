class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.32.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.32.1/lightdash-cli-3.32.1-macos-arm64.tar.gz"
      sha256 "130520ba6083aa484f615804805f08410edc931e0446df58a33ecf62f25670e5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.32.1/lightdash-cli-3.32.1-macos-x64.tar.gz"
      sha256 "0aae676e868f17b4fe77bfb63d184b8e74341868820b83096ded6aa5c446f33f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.32.1/lightdash-cli-3.32.1-linux-x64.tar.gz"
    sha256 "64f19306d88e9b7b84c578352b7ab32d6eb1248bc5a6985a08da5cafa2bd11b8"

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

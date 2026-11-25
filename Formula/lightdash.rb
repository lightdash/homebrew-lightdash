class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.399.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.399.0/lightdash-cli-3.399.0-macos-arm64.tar.gz"
      sha256 "388c05b4be4a3e59ef16befc56f6fc87a42b0b5c5a133320f40026239b03d34c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.399.0/lightdash-cli-3.399.0-macos-x64.tar.gz"
      sha256 "1d07268cffe44e38e0e5ee9d813be3c1f582140b43fdd7ff9cdb4d67151e93cc"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.399.0/lightdash-cli-3.399.0-linux-x64.tar.gz"
    sha256 "4b464fb0ec65f66d8db3a98794a2d90d8cb0bbff6f6ee596b8915338d4f15492"

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

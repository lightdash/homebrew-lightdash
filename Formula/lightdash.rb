class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.512.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.512.1/lightdash-cli-2.512.1-macos-arm64.tar.gz"
      sha256 "d209f7dff7af7ae7671dcf77bd9a4bb1a42e955957e26fbdc201d3dba45f1dc5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.512.1/lightdash-cli-2.512.1-macos-x64.tar.gz"
      sha256 "8231bb016fe3190453f4c7d3213a38c701e2ec4ac8acfbb7e796775c6d31ef9f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.512.1/lightdash-cli-2.512.1-linux-x64.tar.gz"
    sha256 "9e6762102582816e62a9a0c321f927d6350a3fb688ae03a9d397c4e0bd770996"

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

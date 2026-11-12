class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.240.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.240.3/lightdash-cli-3.240.3-macos-arm64.tar.gz"
      sha256 "07bb56836118833d6dba32881e88edceeeb3ed9b3d90a9e8ee5fcaf51792d185"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.240.3/lightdash-cli-3.240.3-macos-x64.tar.gz"
      sha256 "dcd5e4afe6cf20aa634d6e97cd64a5b39198f6be70896ac97eb732f097711d12"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.240.3/lightdash-cli-3.240.3-linux-x64.tar.gz"
    sha256 "0a2607ae065ce7ee5f0910a69fbe3063d6ecf70964dd55b30652aa59e6655430"

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

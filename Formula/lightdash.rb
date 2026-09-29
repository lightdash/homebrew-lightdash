class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.369.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.369.1/lightdash-cli-2.369.1-macos-arm64.tar.gz"
      sha256 "e668077805850b37af759ac35b3bed47df3da1d0a02803f9bdf3ddb9f43a984c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.369.1/lightdash-cli-2.369.1-macos-x64.tar.gz"
      sha256 "2b24319fc9cb4d8b8db0ce12611a09ec52267fb16612cdd37e65fcbb84f368a8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.369.1/lightdash-cli-2.369.1-linux-x64.tar.gz"
    sha256 "f854796811d39c5902bfb03f3a3fdded5400c0904143cf26369d9d41127c77bc"

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

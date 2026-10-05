class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.427.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.427.1/lightdash-cli-2.427.1-macos-arm64.tar.gz"
      sha256 "b991e8ce8bed5c633232b2c4321d58c38d9c5ac8cbbb25ca282c6cea0793d11e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.427.1/lightdash-cli-2.427.1-macos-x64.tar.gz"
      sha256 "7785d00167a13fc1c6f2feb4eb79af44f72c6f47573dabc89b979ca849aa4a95"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.427.1/lightdash-cli-2.427.1-linux-x64.tar.gz"
    sha256 "d9b3728e081e433a92bb99e69d206977d2b56412dd1ce13aaf2c4dbda39e761a"

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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.552.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.552.0/lightdash-cli-2.552.0-macos-arm64.tar.gz"
      sha256 "541b99b12feb132dec11fc8e8efdbb4e97172bf5de84c485882d2e2bfd5336ec"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.552.0/lightdash-cli-2.552.0-macos-x64.tar.gz"
      sha256 "e84b2a8948ae8d29fb6f3bbe6ec97995078a14e83d6025d90617dd10b8709b0a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.552.0/lightdash-cli-2.552.0-linux-x64.tar.gz"
    sha256 "88cf8df73376b0e967fa23026aef4eb57e5aca3fc0d1dc9cfdbb226a419fca14"

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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.414.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.414.1/lightdash-cli-3.414.1-macos-arm64.tar.gz"
      sha256 "fb7e6db06374f2ae2ea0fa5e18919ae38a133ba0e2dd33e3ada0aa0cc7b6e426"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.414.1/lightdash-cli-3.414.1-macos-x64.tar.gz"
      sha256 "c6f4861599f45e4ceb312129844b51adefd5c7206af7bdc852c8bc0d53e98336"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.414.1/lightdash-cli-3.414.1-linux-x64.tar.gz"
    sha256 "5475306baabfc3a9f124d3c0a0f09e0515c5f971d51784d7ec69d06995fa125d"

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

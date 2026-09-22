class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.297.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.297.0/lightdash-cli-2.297.0-macos-arm64.tar.gz"
      sha256 "bbb3a1d84577641dbbd30cdda1fb8b5551ee7e9a5132d9e74a9fdb8db598eb2e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.297.0/lightdash-cli-2.297.0-macos-x64.tar.gz"
      sha256 "62232bb05bd953f9c468dd79f6d3d68a6826f121f2aafe2446c5eab7c7813b2b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.297.0/lightdash-cli-2.297.0-linux-x64.tar.gz"
    sha256 "03496ae8e1da68715b4273576912c9fc64a52399e1290598d8d638feb59a9b81"

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

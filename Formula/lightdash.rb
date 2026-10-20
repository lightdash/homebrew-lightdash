class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.631.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.631.4/lightdash-cli-2.631.4-macos-arm64.tar.gz"
      sha256 "f3bfc23c2341453b1301a2ee32923e2305bff4e65851942c6908ab17eb653a39"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.631.4/lightdash-cli-2.631.4-macos-x64.tar.gz"
      sha256 "d5fcf4c9cbb54b81efaeb2b8e1f9c615aad77b342eb76feb3c4f2b7ff08f10e2"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.631.4/lightdash-cli-2.631.4-linux-x64.tar.gz"
    sha256 "698bd8e3d41bfe585e847ded9b638444e3bb4d8282ddc6d7fda469add2f588bf"

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

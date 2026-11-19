class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.326.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.326.0/lightdash-cli-3.326.0-macos-arm64.tar.gz"
      sha256 "f79187eb1ef76c18f20542c7c3fa95ec759afff2a988bc8b5fe769f8b2f6c100"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.326.0/lightdash-cli-3.326.0-macos-x64.tar.gz"
      sha256 "eb84d587e1773af1c25309c582df2fd99d2bcf5aea68f754b40eaea2ed899e80"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.326.0/lightdash-cli-3.326.0-linux-x64.tar.gz"
    sha256 "50c7b480979f0bb2a1f09d677a663d4e5599ce65ed48682754cd7ab5b820fb89"

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

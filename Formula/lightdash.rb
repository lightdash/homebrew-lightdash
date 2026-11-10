class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.208.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.208.0/lightdash-cli-3.208.0-macos-arm64.tar.gz"
      sha256 "e6741f368a8f436a04a1842f93f7c33bcfb2a34492af6e712ba53d13b0c551e3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.208.0/lightdash-cli-3.208.0-macos-x64.tar.gz"
      sha256 "1608966818e4643f0d1ac14fe5ff89164211234daad0067be5493c7d3dbb755e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.208.0/lightdash-cli-3.208.0-linux-x64.tar.gz"
    sha256 "3b852aadd750019aeb192add618aad001482c320f5de2bc396877ebd6caa544e"

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

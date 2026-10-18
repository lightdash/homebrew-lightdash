class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.603.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.603.2/lightdash-cli-2.603.2-macos-arm64.tar.gz"
      sha256 "a04b999b35750571340bb6ee724f93606abf05d29f21c0ba176c1410f1d7b2fa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.603.2/lightdash-cli-2.603.2-macos-x64.tar.gz"
      sha256 "ec6da53c6ff68f236af8a72a96ad4018e45cbce2a9c9cfe38e139c365a63d983"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.603.2/lightdash-cli-2.603.2-linux-x64.tar.gz"
    sha256 "214eba96c2c65b6899f66127cbf0cf8c2f12d6c3b2c48f24bac28356b5b33451"

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

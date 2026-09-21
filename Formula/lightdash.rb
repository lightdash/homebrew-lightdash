class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.274.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.274.4/lightdash-cli-2.274.4-macos-arm64.tar.gz"
      sha256 "c182202f36f8259cf60468bffb87c94af93bbc11f2fbcb465b82d80641012336"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.274.4/lightdash-cli-2.274.4-macos-x64.tar.gz"
      sha256 "bdabbd0985843e8d24186a05e995b5c532b1da2606a8bf3a1820638c5157f74f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.274.4/lightdash-cli-2.274.4-linux-x64.tar.gz"
      sha256 "a178345b406d6ae1b2bc7c3f47319e2a3e8aa21ef704aa702afecf339f584c41"
    end
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

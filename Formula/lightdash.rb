class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.268.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.268.0/lightdash-cli-2.268.0-macos-arm64.tar.gz"
      sha256 "794f11e2d1909c4bc214f7caafd6089a580f62229d978886c3dfd6a9047d49a1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.268.0/lightdash-cli-2.268.0-macos-x64.tar.gz"
      sha256 "c137beabfe1bd7194b131242e3b8d8f774cbe1a7865cce4f0409ea600b2f6ea1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.268.0/lightdash-cli-2.268.0-linux-x64.tar.gz"
      sha256 "88b8e206b5ae78aab86f534ff3deb9069b88d80c12eee02fd2d98b7f98bf5b29"
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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.337.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.337.0/lightdash-cli-2.337.0-macos-arm64.tar.gz"
      sha256 "754ed3a27ade119d28c739d8ee19f6c4df8bb63a365a677c975dcb758d63fa2b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.337.0/lightdash-cli-2.337.0-macos-x64.tar.gz"
      sha256 "c2a91ad70eca8e9a4f1c2ace84abf9cf75137da20e1b1ab40c649ee74f54364d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.337.0/lightdash-cli-2.337.0-linux-x64.tar.gz"
    sha256 "cfb9c2020e7edf6aa5557f3d181b324ed90d73f66c01837758385eac76cd2b37"

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

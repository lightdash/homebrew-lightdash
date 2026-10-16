class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.592.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.592.2/lightdash-cli-2.592.2-macos-arm64.tar.gz"
      sha256 "37cf93f014211201f847f1cd807096aa58163c6f931091bea98545379bfe05d9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.592.2/lightdash-cli-2.592.2-macos-x64.tar.gz"
      sha256 "ceb5544efab87d73c644fe33b0a2e982ca0a8de45f503b9b4fe27fe6b4b28d30"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.592.2/lightdash-cli-2.592.2-linux-x64.tar.gz"
    sha256 "68e68e23cf512ad8c7551a1ef62eaef77da6ff77ad2e4dd8564dd96855d127f0"

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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.427.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.427.2/lightdash-cli-2.427.2-macos-arm64.tar.gz"
      sha256 "577f7ef3b8d6b60c4ca50c54a803327c0cf5651ca86e2b656ce3a644711cb76f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.427.2/lightdash-cli-2.427.2-macos-x64.tar.gz"
      sha256 "192c839cea23eaee44264f8c2588910b45563e8ed841a3e7807a3bc671da4ef1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.427.2/lightdash-cli-2.427.2-linux-x64.tar.gz"
    sha256 "c116d33d0843e8ffde3ce759d17d1a37c82f30af0bf09c55ef07a15b734edf84"

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

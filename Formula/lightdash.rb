class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.12.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.12.2/lightdash-cli-3.12.2-macos-arm64.tar.gz"
      sha256 "1d11b9882d62d04e9ae1d7ed4b948cad11c5ebd533272daa3f09f530539ef222"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.12.2/lightdash-cli-3.12.2-macos-x64.tar.gz"
      sha256 "36429aead924c229decfd538b68224213268f97a30226b4b9688ca2581909bdb"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.12.2/lightdash-cli-3.12.2-linux-x64.tar.gz"
    sha256 "414afa128ebfa6a2e9edc68ea5bfbdb30242591c6920b86d977e840740218ece"

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

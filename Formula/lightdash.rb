class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.606.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.606.6/lightdash-cli-2.606.6-macos-arm64.tar.gz"
      sha256 "ce77a210a7f20f03fec049efe9cbe76f9264372e5f0a1be7a429926ca94126f0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.606.6/lightdash-cli-2.606.6-macos-x64.tar.gz"
      sha256 "aee71a2559e22393fa30f8b5acbd56904e921aad1df4a6257bda6238c5a3ca17"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.606.6/lightdash-cli-2.606.6-linux-x64.tar.gz"
    sha256 "ef01818b67ad2cc76fe7fb5956471d9646701428c139197ff501339415bae6bb"

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

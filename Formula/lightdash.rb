class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.285.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.285.0/lightdash-cli-3.285.0-macos-arm64.tar.gz"
      sha256 "73ac46b7a44184d0b3b7e2b5af4e06377ab44e9047f9235a7b3bfb832cbd33ea"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.285.0/lightdash-cli-3.285.0-macos-x64.tar.gz"
      sha256 "d1c13910124a225f105638388ccd23f547eaa56f8acfc43c656a71dc13db6c97"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.285.0/lightdash-cli-3.285.0-linux-x64.tar.gz"
    sha256 "bd928867bf7baa86e265203a0487e3155fb72c17d8f3746cfe484aab86a3d72a"

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

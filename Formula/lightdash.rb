class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.350.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.350.1/lightdash-cli-2.350.1-macos-arm64.tar.gz"
      sha256 "0c1a92028ee26088e3afc4008f68575524c59c1a109ddc97195c9a4835b5bc2a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.350.1/lightdash-cli-2.350.1-macos-x64.tar.gz"
      sha256 "eac461f85684078018643863ab8df3a64b3897050a7be22a9fed4a44a7bb988f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.350.1/lightdash-cli-2.350.1-linux-x64.tar.gz"
    sha256 "780ebc9a30d4733b1bf1ea5ba9c38af4a9d050d07a3242996706611256bfac49"

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

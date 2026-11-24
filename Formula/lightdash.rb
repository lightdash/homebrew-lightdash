class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.385.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.385.2/lightdash-cli-3.385.2-macos-arm64.tar.gz"
      sha256 "69f6daab7795d5ed76ca10e265adf47f839e6451c091a90da42ee6794fda03f0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.385.2/lightdash-cli-3.385.2-macos-x64.tar.gz"
      sha256 "9bea216f9032e4c9c4f6cfea812dc2cc0f894b5d131ed3781744f5025d79540f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.385.2/lightdash-cli-3.385.2-linux-x64.tar.gz"
    sha256 "172e0dca4b3b299a7c00c9fce6604b513e7d26fd51153446f6303b988ad4cb8c"

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

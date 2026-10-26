class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.59.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.59.1/lightdash-cli-3.59.1-macos-arm64.tar.gz"
      sha256 "24c42b736dff1b7cabbe9dcdf9cec19bd1addd2f88b11d99f007092b779ac742"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.59.1/lightdash-cli-3.59.1-macos-x64.tar.gz"
      sha256 "51d6b1edcca41093614635b95374339a371fc1339793abeb991ab14c103c7c90"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.59.1/lightdash-cli-3.59.1-linux-x64.tar.gz"
    sha256 "f011a1f0a28402003273d3c67d1bfa7971620998ae819b3711e3512d4df407e6"

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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.145.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.145.0/lightdash-cli-3.145.0-macos-arm64.tar.gz"
      sha256 "b9ae3ac128cfbe8eae16c32cd68b51c08e2a1ecbdd1547914ffbe0e6d9766ea0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.145.0/lightdash-cli-3.145.0-macos-x64.tar.gz"
      sha256 "483d090331bbbacb4e1131a3952706675b11e98458dc7a1ce3f37ec6efa0699e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.145.0/lightdash-cli-3.145.0-linux-x64.tar.gz"
    sha256 "685057789d2a37d713ac1f1a2476aeb51126ee2f583635d6788c867c3c3cdfcf"

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

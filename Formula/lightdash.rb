class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.213.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.213.1/lightdash-cli-3.213.1-macos-arm64.tar.gz"
      sha256 "3128eea7cb28e4ba4da09d9b247a9b276652583872f9ba8e972f7e3fb6e808b2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.213.1/lightdash-cli-3.213.1-macos-x64.tar.gz"
      sha256 "7b86c3beef9092c756b11bcaf21b30319d3d3adeec919be65903eb7f0143f578"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.213.1/lightdash-cli-3.213.1-linux-x64.tar.gz"
    sha256 "607615befb64e4d94d936ab2687d90d53913058a93cd4ba4b30907c450011ea7"

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

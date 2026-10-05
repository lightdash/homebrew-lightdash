class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.435.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.435.0/lightdash-cli-2.435.0-macos-arm64.tar.gz"
      sha256 "c21d0315305aa89c34dd415c00c343b2b5409bc579a2f0ed20edf0de951dc1ac"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.435.0/lightdash-cli-2.435.0-macos-x64.tar.gz"
      sha256 "641f35c807970f7196d3a7b60ece69ab2542b6a6830445055ba9dde9ff6425b7"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.435.0/lightdash-cli-2.435.0-linux-x64.tar.gz"
    sha256 "ede9b380c6ba19dfb260103dfc1e967264ed6f662943975dbd67d0157eb06a20"

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

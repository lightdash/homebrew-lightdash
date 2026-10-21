class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.1.0/lightdash-cli-3.1.0-macos-arm64.tar.gz"
      sha256 "4c1bc466bf361a7e8412a9f64b9188d5df703283e03abc8bfd5c03d2ccc232e6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.1.0/lightdash-cli-3.1.0-macos-x64.tar.gz"
      sha256 "38c970ffa32d0bdbb26c1f3000b8b93add81115918af3168ff7e06a06d605192"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.1.0/lightdash-cli-3.1.0-linux-x64.tar.gz"
    sha256 "fdde9a8fb19cb05b17a34031af58b605ce0a04a1f527dd2ec0f2bb3625008962"

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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.427.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.427.1/lightdash-cli-3.427.1-macos-arm64.tar.gz"
      sha256 "463687e34a7146be19bc980040269b247551687e4f5bb73f39e77534fd27c9ad"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.427.1/lightdash-cli-3.427.1-macos-x64.tar.gz"
      sha256 "4c3504bf47b590b63892762589dcd038eeb385848965716f8982e8857a794345"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.427.1/lightdash-cli-3.427.1-linux-x64.tar.gz"
    sha256 "00991bf8ed4e3bca194f398b0c00e06516fbfbc5740e8961b4829740af327ea1"

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

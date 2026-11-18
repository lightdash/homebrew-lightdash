class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.305.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.305.0/lightdash-cli-3.305.0-macos-arm64.tar.gz"
      sha256 "d1c9d613d094cfb7b99c1ca8b460728938f6d030cede730c378ce015f2327fb0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.305.0/lightdash-cli-3.305.0-macos-x64.tar.gz"
      sha256 "9e15d388d0204a55af4b9f92f9d5c66869b7f82321486f00f1b3122476acf788"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.305.0/lightdash-cli-3.305.0-linux-x64.tar.gz"
    sha256 "6fc913f1db15075a7b3ca3385ea141582d70af83039f0696ca112bb6aae5bf1d"

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

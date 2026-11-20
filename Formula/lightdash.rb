class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.351.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.351.2/lightdash-cli-3.351.2-macos-arm64.tar.gz"
      sha256 "f4087327ef6ce7d62d868b9295d6c425a434dbaeb340d0c219c21e16a7350c3f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.351.2/lightdash-cli-3.351.2-macos-x64.tar.gz"
      sha256 "62c137b394136c68bb9954e264cb27f27e2f64cc32f47ee08e97401ecb8723f8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.351.2/lightdash-cli-3.351.2-linux-x64.tar.gz"
    sha256 "2a9ddd72b0a888fafd9c07ce29c6d1b8648dd8e98bc7c5c4dad3992157dbbf88"

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

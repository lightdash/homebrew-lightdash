class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.79.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.79.0/lightdash-cli-3.79.0-macos-arm64.tar.gz"
      sha256 "4273a2b31ade0afaeecaf53b7b36108972dbe5c7927a89362e58908eda90632b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.79.0/lightdash-cli-3.79.0-macos-x64.tar.gz"
      sha256 "942701aa2cbfad1032bbf9bc7a97f71f6eac9b495102dc12500534530e4552d9"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.79.0/lightdash-cli-3.79.0-linux-x64.tar.gz"
    sha256 "80da3cbf78a76cba6149160669862b53752738aa0e8320a4e68b2ea0d25f44dc"

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

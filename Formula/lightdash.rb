class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.211.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.211.0/lightdash-cli-3.211.0-macos-arm64.tar.gz"
      sha256 "41ae50b74fd2869d68210edb05d57a0bd7f39333f2da1d77a43049c399c4f65f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.211.0/lightdash-cli-3.211.0-macos-x64.tar.gz"
      sha256 "eff20afff062921fb0d346805a868803194a800a1e2c94947500e0169f216cb0"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.211.0/lightdash-cli-3.211.0-linux-x64.tar.gz"
    sha256 "5a414087d327ca8201cfd46ada7317e8fbf5c4e4198539c6f087adfed7881c60"

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

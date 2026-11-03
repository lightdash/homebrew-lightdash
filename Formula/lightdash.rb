class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.134.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.134.0/lightdash-cli-3.134.0-macos-arm64.tar.gz"
      sha256 "149d3568623cf29f533fb91aca0f7432990f03a92efa33f8932879725cd8293d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.134.0/lightdash-cli-3.134.0-macos-x64.tar.gz"
      sha256 "4e49780ede6278d2f52d7ebbc362e0939cc86df3d43460ec91dbb9d789cee508"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.134.0/lightdash-cli-3.134.0-linux-x64.tar.gz"
    sha256 "25047b0c12aca939f1a55514c2f83b6c604bc5f7ec7c101fea96ce82768118cb"

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

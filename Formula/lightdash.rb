class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.348.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.348.0/lightdash-cli-3.348.0-macos-arm64.tar.gz"
      sha256 "fd3a52fe67a7fde6034608b137fd996d950c83ad218b43e7740cdae531ce1988"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.348.0/lightdash-cli-3.348.0-macos-x64.tar.gz"
      sha256 "14e03b49527ed7d132dd0987400d85e4a743674b7b6aaff23f06f5685381178a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.348.0/lightdash-cli-3.348.0-linux-x64.tar.gz"
    sha256 "d02f8ab26930a815142e4f4121a737705cb077b93c2dd04c6b588e7d5077fa7a"

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

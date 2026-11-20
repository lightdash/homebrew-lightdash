class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.358.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.358.2/lightdash-cli-3.358.2-macos-arm64.tar.gz"
      sha256 "36ba2037d910f25cfb4128a258f113995d948258c9e3e19454e74d0a771670f2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.358.2/lightdash-cli-3.358.2-macos-x64.tar.gz"
      sha256 "a94ed190769833dfea7018a7429d0771dde025d7fb4888fa49c6a410c24e4199"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.358.2/lightdash-cli-3.358.2-linux-x64.tar.gz"
    sha256 "7d1bc10cd27b0ee0cc58bb242b1d24e0f6cbbe8f22271752d7e73f221067294c"

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

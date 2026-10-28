class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.78.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.78.3/lightdash-cli-3.78.3-macos-arm64.tar.gz"
      sha256 "7d2c3790124bee97bdab052a950da44d10545e7bdc355e26d0eeae64f1ee3805"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.78.3/lightdash-cli-3.78.3-macos-x64.tar.gz"
      sha256 "979b644809dc16d6733097cea510f11d1af09a49bbedd6f13b2e7031b256e347"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.78.3/lightdash-cli-3.78.3-linux-x64.tar.gz"
    sha256 "fae29242b503d80b853494147daad5308f59d14c9c57768bbcb1e37654baf39b"

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

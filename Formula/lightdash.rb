class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.316.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.316.1/lightdash-cli-2.316.1-macos-arm64.tar.gz"
      sha256 "677e58451f33910e8ae63f5480c710a1bbf2830c9dddf037c77b6678aca46233"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.316.1/lightdash-cli-2.316.1-macos-x64.tar.gz"
      sha256 "e40e4b822cd9056e035b596d92e234076708ba52bc60292835c0fe5fd07e109d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.316.1/lightdash-cli-2.316.1-linux-x64.tar.gz"
    sha256 "50a611d09f77cae9f0d090c470dbcac27f80989a638dad03ff2e5cf19034e4e4"

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

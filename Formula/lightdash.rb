class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.336.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.336.1/lightdash-cli-2.336.1-macos-arm64.tar.gz"
      sha256 "a76226fd1acf75dd179e23e878dd94c7be1b6fc66b2cd22014415b6f27cc6f77"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.336.1/lightdash-cli-2.336.1-macos-x64.tar.gz"
      sha256 "33d25ceae89c7786f1f4347cbb1bbea413b5629e727750e7c7a063dce9280ebb"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.336.1/lightdash-cli-2.336.1-linux-x64.tar.gz"
    sha256 "90d5e965329588b599dfd9a18f4eaf1164b07bb8fe8c2a43cbe53eb2cd5f63be"

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

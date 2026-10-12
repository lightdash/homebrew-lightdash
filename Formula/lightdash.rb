class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.570.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.570.0/lightdash-cli-2.570.0-macos-arm64.tar.gz"
      sha256 "94f6742c34cc8b91b9830d4fa2fe84a12bfe3fcc62829959fcc626c6b1366cdb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.570.0/lightdash-cli-2.570.0-macos-x64.tar.gz"
      sha256 "24b84f94630c04e2f5d66668e940d54856bea2a64d4620d059bdac49791d6631"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.570.0/lightdash-cli-2.570.0-linux-x64.tar.gz"
    sha256 "e50e64ade55a986fdc7bbfc9fc01f974dec4927b71f117c3ffef0d8bc4e31518"

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

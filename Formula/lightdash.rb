class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.53.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.53.1/lightdash-cli-3.53.1-macos-arm64.tar.gz"
      sha256 "d45312cfdcb87012518380b3d8b300e118e7008eaa4eb31651fe8cc5809e11c0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.53.1/lightdash-cli-3.53.1-macos-x64.tar.gz"
      sha256 "990a15ad744379afc3039c42f80a16944d34b2e1bc3ddfcb9ebf6f66a5f81dc8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.53.1/lightdash-cli-3.53.1-linux-x64.tar.gz"
    sha256 "7396628ddcefd88bafe4db057ecf626ea8949475b8e398a801a22b95dce236ca"

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

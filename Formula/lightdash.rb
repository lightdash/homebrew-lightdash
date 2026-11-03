class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.137.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.137.1/lightdash-cli-3.137.1-macos-arm64.tar.gz"
      sha256 "add381b6cf3d70da570318d7fb19a4c5220521bcef62c1b0597e2ecb3b1c4902"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.137.1/lightdash-cli-3.137.1-macos-x64.tar.gz"
      sha256 "5157718718cff160b8640cc5a1eb31c8ea880cb72244a21d4789edcc84871070"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.137.1/lightdash-cli-3.137.1-linux-x64.tar.gz"
    sha256 "3a3a94267299dd25576a25d361eb149d6a1aa81a79cbc40c9692b0eff532b9ea"

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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.363.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.363.0/lightdash-cli-3.363.0-macos-arm64.tar.gz"
      sha256 "8940ac5eeccb309ecba30595b957b89b8625c53bc0997ac0bf3f514ee385d191"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.363.0/lightdash-cli-3.363.0-macos-x64.tar.gz"
      sha256 "63aa95d911f04928094ccf4a685ed26d6232095ff006754086cf570fabe1f128"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.363.0/lightdash-cli-3.363.0-linux-x64.tar.gz"
    sha256 "7b2df956bea7c195587b496c097ae2960668d8063b5683a996477ccfae929d42"

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

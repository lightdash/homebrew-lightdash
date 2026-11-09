class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.181.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.181.3/lightdash-cli-3.181.3-macos-arm64.tar.gz"
      sha256 "4398edf9243c94c1cc2b93b0df352804357a964ce052f9483bfdff34dd7c68f5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.181.3/lightdash-cli-3.181.3-macos-x64.tar.gz"
      sha256 "b6b0fde0d9c011e08de1bc5eca73bdc46f5fbc219f25c781362e8148f35493b7"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.181.3/lightdash-cli-3.181.3-linux-x64.tar.gz"
    sha256 "210f73b3c68e52bad9dba40f1c2724877fd6e3c4f11b1b9e7624654d8523c7e6"

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

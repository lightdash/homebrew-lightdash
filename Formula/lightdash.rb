class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.369.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.369.0/lightdash-cli-3.369.0-macos-arm64.tar.gz"
      sha256 "3fc6e67079d5251de1839b38055027a336d3950768df97b03925178d944acb29"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.369.0/lightdash-cli-3.369.0-macos-x64.tar.gz"
      sha256 "203290feb7ca8ce743475b932d6a158e1a32ca29fb2332c7d174726b445feced"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.369.0/lightdash-cli-3.369.0-linux-x64.tar.gz"
    sha256 "1ceda5f170a0bf3a9b5d42221a4b61d1eff74594c384c490244996b700d9f805"

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

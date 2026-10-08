class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.475.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.475.0/lightdash-cli-2.475.0-macos-arm64.tar.gz"
      sha256 "ca4bc0765b2dbc030e9e6bd73cf5befac30007c6291293b2e2ffe20a525c6b64"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.475.0/lightdash-cli-2.475.0-macos-x64.tar.gz"
      sha256 "64bedf7027d3e95320fbb13cdbb92b720402532cd91ad07c692d840c4fb69a20"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.475.0/lightdash-cli-2.475.0-linux-x64.tar.gz"
    sha256 "f31cff8a112893ba8ca1d4a37965205926372e62a9989d0eef67ded5846304d8"

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

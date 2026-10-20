class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.621.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.621.1/lightdash-cli-2.621.1-macos-arm64.tar.gz"
      sha256 "a3cd842109a75f13ad448a4f750417163382e09f3f2f416dc28e50937bb23619"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.621.1/lightdash-cli-2.621.1-macos-x64.tar.gz"
      sha256 "9f48fa60c89cb46eef64709cb1e3c34d52a85068f7ba086c7810f3a5b7f5e677"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.621.1/lightdash-cli-2.621.1-linux-x64.tar.gz"
    sha256 "a1fdf4895500f9e915918bed67aceddc19f6a5396f16bc937b469c5255365ece"

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

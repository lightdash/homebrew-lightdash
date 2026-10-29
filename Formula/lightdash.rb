class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.95.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.95.0/lightdash-cli-3.95.0-macos-arm64.tar.gz"
      sha256 "d756fda58b80d9830f5ee4919d84e1a8c852220e3d27c3f41facaa8fcd5203da"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.95.0/lightdash-cli-3.95.0-macos-x64.tar.gz"
      sha256 "f35945c6d5b836be6010568e0258d414c1515b397aba066f51f5d6ff9a06f0db"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.95.0/lightdash-cli-3.95.0-linux-x64.tar.gz"
    sha256 "0eca3606bec2d4f503bb3735c1c62edfb79d8e963bf95302cf6648d86473b674"

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

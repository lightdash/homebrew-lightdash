class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.345.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.345.0/lightdash-cli-2.345.0-macos-arm64.tar.gz"
      sha256 "ba58bd30705855480dccef55a2025e478b32a095b89e5ac1b8080e03ce1d75a1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.345.0/lightdash-cli-2.345.0-macos-x64.tar.gz"
      sha256 "2d07c58e9aa4fe7a06a0b9de541ef29815e8bfb23b6f4c3b9cc674ad057a785a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.345.0/lightdash-cli-2.345.0-linux-x64.tar.gz"
    sha256 "65ea68099714e0a43b13390e19b78aec51f0fb8e11c6e87c6a173045c8b36f34"

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

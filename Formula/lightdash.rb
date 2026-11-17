class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.290.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.290.0/lightdash-cli-3.290.0-macos-arm64.tar.gz"
      sha256 "e2fd8e12d69f0a73e175e15b88f914ce9cf72c319d6bcd7d223f855e6b34a03c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.290.0/lightdash-cli-3.290.0-macos-x64.tar.gz"
      sha256 "db6c3079502966b5e797f544f52860f991da9656642c2e54513f46711a794a40"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.290.0/lightdash-cli-3.290.0-linux-x64.tar.gz"
    sha256 "9a40d63477a83e6fd2c7070a4c76f63f3152835645d6f92e9b9a164aca24bdda"

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

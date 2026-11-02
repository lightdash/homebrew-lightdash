class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.126.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.126.0/lightdash-cli-3.126.0-macos-arm64.tar.gz"
      sha256 "20d1659e909ebddc5be1fe77647e826555a1e8e283dd54e442beaa521b461797"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.126.0/lightdash-cli-3.126.0-macos-x64.tar.gz"
      sha256 "3b5ff38e194452075855f3ccec781a0ff40e95e03dff1e52a66fb3564b6ac1d5"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.126.0/lightdash-cli-3.126.0-linux-x64.tar.gz"
    sha256 "1ccd24581af90c40c69ff518409e3e49ab6d1ff3854043bb1d2b13c32f60568e"

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

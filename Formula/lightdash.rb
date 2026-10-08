class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.480.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.480.0/lightdash-cli-2.480.0-macos-arm64.tar.gz"
      sha256 "c7b3ae73ecee71b88847f32e31b8d45983fd44119d5d89ab61268b51fdb69df4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.480.0/lightdash-cli-2.480.0-macos-x64.tar.gz"
      sha256 "88375d2e043ca2f6319bc851afb325ed8d9e49a205e3ab5f1a50ed28a09239ba"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.480.0/lightdash-cli-2.480.0-linux-x64.tar.gz"
    sha256 "bbb1656af00059742f6af12ac1234e23b7927fcde07d0470b491c1496c3355eb"

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

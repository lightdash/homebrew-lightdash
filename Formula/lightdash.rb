class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.76.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.76.1/lightdash-cli-3.76.1-macos-arm64.tar.gz"
      sha256 "051e0d4c19a838b3f8bb0c4844af58fccfa60ca2af64de9a4d37fb2504ad4442"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.76.1/lightdash-cli-3.76.1-macos-x64.tar.gz"
      sha256 "b4fde438305e0a3547e755ec8fb1a400e35f565d8436979fa3c57c2ec7b99029"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.76.1/lightdash-cli-3.76.1-linux-x64.tar.gz"
    sha256 "a25dabad091c0ae8bfec69acefa434bc18db1cd176abd383f3f93d52ca6c378d"

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

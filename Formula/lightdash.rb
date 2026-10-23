class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.47.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.47.0/lightdash-cli-3.47.0-macos-arm64.tar.gz"
      sha256 "29607e169d4fb1900cfc6a619203903d436a23e298b868f11ba2d04d83d55cd4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.47.0/lightdash-cli-3.47.0-macos-x64.tar.gz"
      sha256 "dad01a1803a4e6b415aa2f7149567241b6236a5c156c28a0e44b9a50f00d9711"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.47.0/lightdash-cli-3.47.0-linux-x64.tar.gz"
    sha256 "8ff32d7b1b52657db060bb94ed5c0eb5016acc93c9715f5fbd0e7e5458c7a184"

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

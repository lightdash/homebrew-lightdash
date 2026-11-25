class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.395.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.395.2/lightdash-cli-3.395.2-macos-arm64.tar.gz"
      sha256 "280a76675f6e35ce3ca5631ad3e962fc09d2964ec0efe08d4a841256a0f0ab35"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.395.2/lightdash-cli-3.395.2-macos-x64.tar.gz"
      sha256 "15d10299a0690925e0c2de2709abe30866c25c4efd1418e385f508c38c134ff0"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.395.2/lightdash-cli-3.395.2-linux-x64.tar.gz"
    sha256 "a4a01071fa039e00ccc14a0ec061fa51b81019c3475570aecff48484c3ec269e"

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

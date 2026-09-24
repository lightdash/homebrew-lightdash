class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.321.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.321.0/lightdash-cli-2.321.0-macos-arm64.tar.gz"
      sha256 "6cb8e8e393e5f0a1869cb93c97c007b9b739383f9c22736fe260553b2d1c716b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.321.0/lightdash-cli-2.321.0-macos-x64.tar.gz"
      sha256 "60a84e66e8a23716fe910ef005f7c43aafd3b660faed814f15b412c2fc054b69"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.321.0/lightdash-cli-2.321.0-linux-x64.tar.gz"
    sha256 "1d73e52a8ea265d2f793130f7b60b491282865fb1f58da5b8cca17e52c9511e7"

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

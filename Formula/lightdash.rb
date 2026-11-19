class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.332.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.332.1/lightdash-cli-3.332.1-macos-arm64.tar.gz"
      sha256 "c8e90f99b092f6ac66260a39a652c5eae84f1262b26ea120d12b70548289c8d8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.332.1/lightdash-cli-3.332.1-macos-x64.tar.gz"
      sha256 "39eac7217d5352f59698909b3860e461a7205fb15ad951ab8f8449a7f027c0cf"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.332.1/lightdash-cli-3.332.1-linux-x64.tar.gz"
    sha256 "99af8909405e7b2f602fcf126413a091ccb7664ac1cde48bfbf64b927fc4e860"

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

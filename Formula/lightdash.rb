class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.625.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.625.0/lightdash-cli-2.625.0-macos-arm64.tar.gz"
      sha256 "f88398e14cf6527655ad0d871314f1db326d82ea27d5d33244bf8ba64f0c2229"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.625.0/lightdash-cli-2.625.0-macos-x64.tar.gz"
      sha256 "2e2a946d24eb4f7e93c3ca8ddd94fe99121e456b7563f6738bcba6b5a9e2f5d4"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.625.0/lightdash-cli-2.625.0-linux-x64.tar.gz"
    sha256 "aee806d1c3532e236d70eb816fdc63ee0e6fafe4e31e9ad8129bb1e918466ce7"

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

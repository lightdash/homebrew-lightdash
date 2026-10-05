class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.428.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.428.1/lightdash-cli-2.428.1-macos-arm64.tar.gz"
      sha256 "18bb0771b22b9be07efdc8df8242702fa394d90a3375852220bac7ec90b2a6b7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.428.1/lightdash-cli-2.428.1-macos-x64.tar.gz"
      sha256 "9a86e21b62d64e8857d6e4312c3c44ec8e4b7e720beabe7f893080860dedef58"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.428.1/lightdash-cli-2.428.1-linux-x64.tar.gz"
    sha256 "2f30f02f333fd99fa17fdd36eebbf23d87d6cef0eb3468697309f819498f7cc1"

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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.97.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.97.0/lightdash-cli-3.97.0-macos-arm64.tar.gz"
      sha256 "fc5af355ae8395c3dbfb027967b6be458665ecc3870b9113741246dd0783de0b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.97.0/lightdash-cli-3.97.0-macos-x64.tar.gz"
      sha256 "b24f56984473c1cd4be454413e79ef46fbb3f9a18fccdd2f4c5bde606109de55"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.97.0/lightdash-cli-3.97.0-linux-x64.tar.gz"
    sha256 "2fe4ef940409391d714ae02a45999360cfd5db4c09b084d21bb395ac76f955be"

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

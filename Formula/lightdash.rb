class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.616.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.616.2/lightdash-cli-2.616.2-macos-arm64.tar.gz"
      sha256 "ea758f191eae0843222028f4cbcae84a9433f2b5eecc371216c8a455521be6bf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.616.2/lightdash-cli-2.616.2-macos-x64.tar.gz"
      sha256 "6e4b287d21ca2d08149d2348f819041f1ebab74064b0345b3847583911a30e58"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.616.2/lightdash-cli-2.616.2-linux-x64.tar.gz"
    sha256 "db2eb241de5c15fee1958009835eff2ad0e9b0d619906332ea362e3c0358d34e"

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

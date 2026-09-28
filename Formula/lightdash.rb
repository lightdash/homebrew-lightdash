class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.348.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.348.1/lightdash-cli-2.348.1-macos-arm64.tar.gz"
      sha256 "88a2b49aac38d8223dd1cb093c131d5cfb1a865f04515ae43291f093eb7782b5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.348.1/lightdash-cli-2.348.1-macos-x64.tar.gz"
      sha256 "b359a5045d5219bfb88a0ded0132a261d9f1177a9b0b1ff99351f2c9a6507a21"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.348.1/lightdash-cli-2.348.1-linux-x64.tar.gz"
    sha256 "21c5978fa645a4df39a2580964b09325f7593604bbf6de4daab757874b0a3bd3"

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

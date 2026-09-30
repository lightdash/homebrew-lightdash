class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.381.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.381.0/lightdash-cli-2.381.0-macos-arm64.tar.gz"
      sha256 "106f6bcb721e9843eb4434995c14fbd59a88a9b2bec75ad373b2ca5b1de3fdd0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.381.0/lightdash-cli-2.381.0-macos-x64.tar.gz"
      sha256 "0ca357d432a944a2d321781a1a9bdfe82aadcd453f5b3fa58651692ef4df086d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.381.0/lightdash-cli-2.381.0-linux-x64.tar.gz"
    sha256 "901a3d4b351d239af66a056f7b72a35c5061609c2c859359d01935ae1d189af4"

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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.382.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.382.0/lightdash-cli-2.382.0-macos-arm64.tar.gz"
      sha256 "fed44b077107d89e656abc2cd7b1b6f2b4226046e61ce9b22a0cc058689708f5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.382.0/lightdash-cli-2.382.0-macos-x64.tar.gz"
      sha256 "ecc923e32dee48b1ae577470dcdb972897da311052237d9f615573a87173c338"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.382.0/lightdash-cli-2.382.0-linux-x64.tar.gz"
    sha256 "7aa3df8c5eb0cb5b58afa76316c24127504a611929d27353af3ca2cdda8837f4"

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

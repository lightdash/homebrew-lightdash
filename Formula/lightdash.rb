class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.338.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.338.0/lightdash-cli-3.338.0-macos-arm64.tar.gz"
      sha256 "c33d3da9f1f96e39469a0ef050af22fe22259352f4e1356d20399ed4e0c78ffd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.338.0/lightdash-cli-3.338.0-macos-x64.tar.gz"
      sha256 "9416c197fd06ae837dd7a998d096c54a341202a92dcebd27c4690f5dd9f591b5"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.338.0/lightdash-cli-3.338.0-linux-x64.tar.gz"
    sha256 "0cfc91c61754e2f285d1f8c19a5815384eed1277c18c9e3f766e8dd8cd776ef9"

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

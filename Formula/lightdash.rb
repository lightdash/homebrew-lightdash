class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.608.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.608.0/lightdash-cli-2.608.0-macos-arm64.tar.gz"
      sha256 "cc621220ee9feed939fc4cb44497e6150ce3a380ada075de57c3eff2cc336445"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.608.0/lightdash-cli-2.608.0-macos-x64.tar.gz"
      sha256 "3ab5e54695ec3536458fb4cadf83445cac4f1b65b8f25d0b933ac1dd5cbd4938"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.608.0/lightdash-cli-2.608.0-linux-x64.tar.gz"
    sha256 "3fd5379bc37c761d43c0ade4d0bdf8246e1e657b44b4b9e7bff2ab662cc7d911"

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

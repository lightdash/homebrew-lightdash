class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.420.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.420.1/lightdash-cli-3.420.1-macos-arm64.tar.gz"
      sha256 "960468e2aebce6a39b855e868c67bda17e4ed6cd8439c20f9b302c44a56ee38a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.420.1/lightdash-cli-3.420.1-macos-x64.tar.gz"
      sha256 "9ada285bb82df3ed30a9d4e97d7a98b3620949329f1ad150d556ad957bfac0c7"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.420.1/lightdash-cli-3.420.1-linux-x64.tar.gz"
    sha256 "5eefe404af0392b119462931951c6ba8df7975b0285949ccb316997ca9c39f6a"

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

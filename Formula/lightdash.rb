class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.12.0/lightdash-cli-3.12.0-macos-arm64.tar.gz"
      sha256 "6b014f30e920315cd931395ac2a037599de15986cc2ba84662dfea8dbe3a51b4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.12.0/lightdash-cli-3.12.0-macos-x64.tar.gz"
      sha256 "f76fc9bba9c78f5ccadaab853f03da2a7dd789d23b6ec9d178bcc9b6c235d6bb"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.12.0/lightdash-cli-3.12.0-linux-x64.tar.gz"
    sha256 "42da733dcb5578d6862404e61213fb7dcfe630c821e944013b3e60f65e66b13a"

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

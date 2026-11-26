class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.415.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.415.1/lightdash-cli-3.415.1-macos-arm64.tar.gz"
      sha256 "c25d9b684c807712bc814261b37ce5cdf0b409304e1d3f46c0d78b56d64f04a8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.415.1/lightdash-cli-3.415.1-macos-x64.tar.gz"
      sha256 "605ef640e1ad8e3b4c7a5acff8a89b985ded186fc753324f14044a77dad58b73"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.415.1/lightdash-cli-3.415.1-linux-x64.tar.gz"
    sha256 "da326c4b918933b317ae1d350663b37e6bddc40776e3e7af48ae1b2d001dba02"

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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.17.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.17.1/lightdash-cli-3.17.1-macos-arm64.tar.gz"
      sha256 "3357a131f149c13bd72e65d662891d824ae23f0f1e71d6846eed35c864240f52"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.17.1/lightdash-cli-3.17.1-macos-x64.tar.gz"
      sha256 "68a2e50b15fdca44c3fbc922703ac3c82038066c5a53f256d251e1e17166bb3a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.17.1/lightdash-cli-3.17.1-linux-x64.tar.gz"
    sha256 "15e31306f4cfe7a42394a2c798edab3e5086aa0a7294dab0b33ba79c93d281ca"

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

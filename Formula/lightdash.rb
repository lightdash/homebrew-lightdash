class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.60.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.60.1/lightdash-cli-3.60.1-macos-arm64.tar.gz"
      sha256 "f9ec0fc3a36dc619c647edda317191f55f9c6c3929bb03f8cc5546af596d5ba7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.60.1/lightdash-cli-3.60.1-macos-x64.tar.gz"
      sha256 "756c29179efaa760a3218f2e708b7bd1852c2d4d30028480eac068313875c18e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.60.1/lightdash-cli-3.60.1-linux-x64.tar.gz"
    sha256 "cd11d8ef44ad33b269e2143393349452be337acfc6d2a787b79177407b159869"

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

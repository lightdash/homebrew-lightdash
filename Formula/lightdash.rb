class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.59.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.59.0/lightdash-cli-3.59.0-macos-arm64.tar.gz"
      sha256 "25d1c836a6172fad5cc7d4e1795122436d966dba4ba240e117c53bacadd9202d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.59.0/lightdash-cli-3.59.0-macos-x64.tar.gz"
      sha256 "54462a430606eb8ea168735247aac6f88f1aa535aa5ca5e3fe2a6443c4047fd7"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.59.0/lightdash-cli-3.59.0-linux-x64.tar.gz"
    sha256 "b4c2a764b17219b530d7880d2204aabd5c134a7be9fbcdde49fab04d3678f7a6"

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

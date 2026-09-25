class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.343.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.343.0/lightdash-cli-2.343.0-macos-arm64.tar.gz"
      sha256 "ab0e3be0a156debf411c46d0affdce66b6cb9de1e057d338d44efc155c6e9b9d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.343.0/lightdash-cli-2.343.0-macos-x64.tar.gz"
      sha256 "8738be56e71f74fdc5418b1a421eae5088714b0ffbe907fd7038bb90e4699d95"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.343.0/lightdash-cli-2.343.0-linux-x64.tar.gz"
    sha256 "a634e335f0ddcb75936c9b068cc2de01da1c5b76fa501b41b59ac529afe1e48c"

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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.303.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.303.0/lightdash-cli-3.303.0-macos-arm64.tar.gz"
      sha256 "4a1eb7e30ce21af8a442109a437d94b5b15e6e0bf86bf9d42c46f270a680c14a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.303.0/lightdash-cli-3.303.0-macos-x64.tar.gz"
      sha256 "50e3e834c5149bec0faa5db2ebd3939f35f9b1420cc3baf62ebd9dd12c7cdf25"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.303.0/lightdash-cli-3.303.0-linux-x64.tar.gz"
    sha256 "e6c33dcbd49a9b37611348fd5b07337028601251fcf96b20c668276ce5728482"

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

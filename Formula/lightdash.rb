class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.353.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.353.1/lightdash-cli-3.353.1-macos-arm64.tar.gz"
      sha256 "8a61eca880abbda6b2db698f96d69f6767d5823fa4cf243334375cfc6291cf05"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.353.1/lightdash-cli-3.353.1-macos-x64.tar.gz"
      sha256 "62ddb2a5bee8f24f5a95755007abd8b0c4964ba1d711c637489f162e9ae7b1b4"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.353.1/lightdash-cli-3.353.1-linux-x64.tar.gz"
    sha256 "8e524d0e44dd5b640f542bbdd9b75f0e62e7a8aacbf431533aaf485b3b837821"

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

class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.40.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.40.0/lightdash-cli-3.40.0-macos-arm64.tar.gz"
      sha256 "26c4c69fa73361fa9ac3919e0a6b7070132ab1d0e43f4934a506aace3208a61e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.40.0/lightdash-cli-3.40.0-macos-x64.tar.gz"
      sha256 "3ddbda828f2a7a6c8f48aa521aa761a6f52d0564a31d04b5a9bf31fde6207cf5"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.40.0/lightdash-cli-3.40.0-linux-x64.tar.gz"
    sha256 "3ea730e8f6b471756f75021bfa7de5c56a1a840017bd45ba1e3d0671b0515ee1"

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

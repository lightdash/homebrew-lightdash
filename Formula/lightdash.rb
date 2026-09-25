class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.339.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.339.1/lightdash-cli-2.339.1-macos-arm64.tar.gz"
      sha256 "a828a5c9da2aaa7ba12198acc94fd2343bc2c5f30c4ed54ae50d738b245e3199"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.339.1/lightdash-cli-2.339.1-macos-x64.tar.gz"
      sha256 "4411455fd6703cc18bffd170a442efbd30d0fe1e2f0ed4c1e49feba6c379f8ac"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.339.1/lightdash-cli-2.339.1-linux-x64.tar.gz"
    sha256 "ef99ad277960d9668f3c08a34416b60cd8e28445dc4d91bc9252dd53d1d35401"

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

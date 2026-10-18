class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.604.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.604.0/lightdash-cli-2.604.0-macos-arm64.tar.gz"
      sha256 "620601e52f77147ede6d199d51b9fc3d82c7ee2a138dbf201d38bc359bd4e25c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.604.0/lightdash-cli-2.604.0-macos-x64.tar.gz"
      sha256 "ea713c5991f6e89459db187419a58243d9849fb01937c112cfe4f57094f5e546"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.604.0/lightdash-cli-2.604.0-linux-x64.tar.gz"
    sha256 "ea27cebf7ae6ab804ae5158a6ebaa0c3c1d6465b992c76a90429213d77146560"

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

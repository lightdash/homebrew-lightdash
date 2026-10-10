class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.533.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.533.0/lightdash-cli-2.533.0-macos-arm64.tar.gz"
      sha256 "7e977187f2a1f5a111dfe5913533dc12438d4a96e5d77752cda3d1a647cac59a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.533.0/lightdash-cli-2.533.0-macos-x64.tar.gz"
      sha256 "c21bde30428abcab2ad8dc78337bb166cb9e5b008f7eb1653db8803012afd022"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.533.0/lightdash-cli-2.533.0-linux-x64.tar.gz"
    sha256 "57f00b0ced2108bd18ad25ab2e784810a35796d020eef303bb4e67cf9b1f7034"

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
